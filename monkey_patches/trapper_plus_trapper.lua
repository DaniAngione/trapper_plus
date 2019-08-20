local TrapperClass = require 'stonehearth.jobs.trapper.trapper'
local TrapperPlusClass = class()
local BaseJob = require 'stonehearth.jobs.crafting_job'
radiant.mixin(TrapperPlusClass, BaseJob)
local log = radiant.log.create_logger('trapper_plus')

return TrapperPlusClass