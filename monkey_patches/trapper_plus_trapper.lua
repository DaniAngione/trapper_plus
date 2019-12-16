local TrapperClass = require 'stonehearth.jobs.trapper.trapper'
local CraftingJob = require 'stonehearth.jobs.crafting_job'

-- Compatibility with ACE
local AceTrapperClass = require 'stonehearth_ace.monkey_patches.ace_trapper'

local TrapperPlusClass = class()
local log = radiant.log.create_logger('trapper_plus')
radiant.mixin(TrapperPlusClass, CraftingJob)
if AceTrapperClass then
	radiant.mixin(TrapperPlusClass, AceTrapperClass)
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

return TrapperPlusClass