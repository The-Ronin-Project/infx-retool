insert into surveys.survey_question_group_link
(uuid, survey_uuid, question_group_uuid, position)
VALUES
({{uuid.v1()}}, {{urlparams.uuid}}, {{qg_search_results.selectedRow.data.uuid}}, {{parseInt(max_position_survey.data.max_position) + 1}})