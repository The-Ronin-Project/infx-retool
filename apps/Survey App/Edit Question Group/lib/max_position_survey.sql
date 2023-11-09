select coalesce(max(position), 0) as max_position from surveys.question_group_members
where question_group_uuid={{urlparams.uuid}}