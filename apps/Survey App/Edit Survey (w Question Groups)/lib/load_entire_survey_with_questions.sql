select qgm.question_uuid, question_text, qg.title from surveys.survey_question_group_link sqgl
join surveys.question_group_members qgm
on qgm.question_group_uuid = sqgl.question_group_uuid
join surveys.question
on question.question_uuid = qgm.question_uuid
join surveys.question_group qg
on qg.uuid = qgm.question_group_uuid
where survey_uuid={{urlparams.uuid}}
order by sqgl.position, qgm.position