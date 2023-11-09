insert into surveys.survey_question_group_link
(uuid, survey_uuid, question_group_uuid, position)
select uuid_generate_v1(), {{duplicate_survey_uuid.value}}, question_group_uuid, position 
from surveys.survey_question_group_link
where survey_uuid={{table1.selectedRow.data.uuid}}