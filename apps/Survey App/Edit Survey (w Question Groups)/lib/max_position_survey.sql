select coalesce(max(position), 0) as max_position from surveys.survey_question_group_link
where survey_uuid={{urlparams.uuid}}