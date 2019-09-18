local TrapperPlusUnlocks = class()

function TrapperPlusUnlocks:start(ctx, data)
	local pop = stonehearth.population:get_population(ctx.player_id)
	local kingdom = pop:get_kingdom()
	local trapper = stonehearth.job:get_job_info(ctx.player_id, 'stonehearth:jobs:trapper')	
		
	if trapper and kingdom == 'stonehearth:kingdoms:ascendancy' then
		trapper:manually_unlock_recipe('workbenches:smokehouse')
	elseif trapper and kingdom == 'rayyas_children:kingdoms:rayyas_children' then
		trapper:manually_unlock_recipe('workbenches:rc_smokehouse')
	elseif trapper and kingdom == 'northern_alliance:kingdoms:northern_alliance' then
		trapper:manually_unlock_recipe('workbenches:na_smokehouse')
	elseif trapper then
		trapper:manually_unlock_recipe('workbenches:smokehouse')
	end
end

return TrapperPlusUnlocks