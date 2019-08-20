trapper_plus = {}

local service_creation_order = {}

local monkey_patches = {
   trapper_plus_trapper = 'stonehearth.jobs.trapper.trapper'
}

local function monkey_patching()
   for from, into in pairs(monkey_patches) do
      local monkey_see = require('monkey_patches.' .. from)
      local monkey_do = radiant.mods.require(into)
      radiant.log.write_('trapper_plus', 0, 'Trapper+ Mod server monkey-patching sources \'' .. from .. '\' => \'' .. into .. '\'')
      radiant.mixin(monkey_do, monkey_see)
   end
end

local function create_service(name)
   local path = string.format('services.server.%s.%s_service', name, name)
   local service = require(path)()
	
   local saved_variables = trapper_plus._sv[name]
   if not saved_variables then
      saved_variables = radiant.create_datastore()
      trapper_plus._sv[name] = saved_variables
   end

   service.__saved_variables = saved_variables
   service._sv = saved_variables:get_data()
   saved_variables:set_controller(service)
   saved_variables:set_controller_name('trapper_plus:' .. name)
   service:initialize()
   trapper_plus[name] = service
end

function trapper_plus:_on_init()
   trapper_plus._sv = trapper_plus.__saved_variables:get_data()

   for _, name in ipairs(service_creation_order) do
      create_service(name)
   end

   radiant.events.trigger_async(radiant, 'trapper_plus:server:init')
   radiant.log.write_('trapper_plus', 0, 'Trapper+ Mod server initialized')
end

function trapper_plus:_on_required_loaded()
	monkey_patching()
   
   radiant.events.trigger_async(radiant, 'trapper_plus:server:required_loaded')
end

radiant.events.listen(trapper_plus, 'radiant:init', trapper_plus, trapper_plus._on_init)
radiant.events.listen(radiant, 'radiant:required_loaded', trapper_plus, trapper_plus._on_required_loaded)

return trapper_plus
