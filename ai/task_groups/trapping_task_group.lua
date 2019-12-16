local TrappingTaskGroup = class()
TrappingTaskGroup.name = 'trapping'
TrappingTaskGroup.does = 'stonehearth:work'
TrappingTaskGroup.priority = {0.78, 0.86}

return stonehearth.ai:create_task_group(TrappingTaskGroup)
         :work_order_tag("job")
         :declare_multiple_tasks('stonehearth:trapping:survey_trapping_grounds', 0)
         :declare_multiple_tasks('stonehearth:trapping:set_bait_trap', 0.5)
         :declare_multiple_tasks('stonehearth:trapping:check_bait_trap', 1)
