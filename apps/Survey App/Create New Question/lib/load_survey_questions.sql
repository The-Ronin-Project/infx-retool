select * from surveys.survey_question_link 
join surveys.question
on surveys.survey_question_link.question_uuid = surveys.question.question_uuid
left join surveys.question_characteristic
on surveys.question_characteristic.question_characteristic_uuid = surveys.question.question_characteristic_uuid
where survey_uuid={{ variable0 }}
order by position asc