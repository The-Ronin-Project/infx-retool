select sqgl.uuid uuid, position, description, title, qg.uuid qg_uuid
from surveys.survey_question_group_link sqgl
join surveys.question_group qg
on sqgl.question_group_uuid=qg.uuid
where survey_uuid={{urlparams.uuid}}
order by position asc