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
return TrapperPlusClass