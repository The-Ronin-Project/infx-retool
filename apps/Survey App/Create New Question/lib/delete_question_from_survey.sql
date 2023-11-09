delete from surveys.survey_question_link
where survey_uuid={{urlparams.uuid}}
and question_uuid = {{table1.selectedRow.data.question_uuid}}