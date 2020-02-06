local TrapperClass = require 'stonehearth.jobs.trapper.trapper'
local BaseJob = require 'stonehearth.jobs.crafting_job'

-- Compatibility with ACE
local AceTrapperClass = require 'stonehearth_ace.monkey_patches.ace_trapper'

local TrapperPlusClass = class()
local log = radiant.log.create_logger('trapper_plus')
radiant.mixin(TrapperPlusClass, BaseJob)
if AceTrapperClass then
	radiant.mixin(TrapperPlusClass, AceTrapperClass)
end

-- Override this function to make trap limits work
function TrapperPlusClass:initialize()
   BaseJob.initialize(self)
   self._sv._tame_beast_percent_chance = 0
   self._sv.max_num_siege_weapons = {}
end

function TrapperPlusClass:activate()
   BaseJob.activate(self)

   if self._sv.is_current_class then
      self:_register_with_town()
   end

   self.__saved_variables:mark_changed()
end
	
-- These functions need to be redeclared for the trapper to earn experience by both crafting and field work activity	
function TrapperPlusClass:_create_listeners()
   self._on_craft_listener = radiant.events.listen(self._sv._entity, 'stonehearth:crafter:craft_item', self, self._on_craft)
	self._clear_trap_listener = radiant.events.listen(self._sv._entity, 'stonehearth:clear_trap', self, self._on_clear_trap)
   self._befriend_pet_listener = radiant.events.listen(self._sv._entity, 'stonehearth:befriend_pet', self, self._on_pet_befriended)
end

function TrapperPlusClass:_remove_listeners()
   if self._on_craft_listener then
      self._on_craft_listener:destroy()
      self._on_craft_listener = nil
   end
	
	if self._clear_trap_listener then
      self._clear_trap_listener:destroy()
      self._clear_trap_listener = nil
   end

   if self._befriend_pet_listener then
      self._befriend_pet_listener:destroy()
      self._befriend_pet_listener = nil
   end

   if self._set_trap_listener then
      self._set_trap_listener:destroy()
      self._set_trap_listener = nil
   end
end

function TrapperPlusClass:promote(json_path, options)
   BaseJob.promote(self, json_path, options)
   self._sv.max_num_siege_weapons = self._job_json.initial_num_siege_weapons or { trap = 0 }
   if next(self._sv.max_num_siege_weapons) then
      self:_register_with_town()
   end
   self.__saved_variables:mark_changed()
end

function TrapperPlusClass:increase_max_placeable_traps(args)
   self._sv.max_num_siege_weapons = args.max_num_siege_weapons
   self:_register_with_town()
   self.__saved_variables:mark_changed()
end

function TrapperPlusClass:_register_with_town()
   local player_id = radiant.entities.get_player_id(self._sv._entity)
   local town = stonehearth.town:get_town(player_id)
   if town then
      town:add_placement_slot_entity(self._sv._entity, self._sv.max_num_siege_weapons)
   end
end

return TrapperPlusClass