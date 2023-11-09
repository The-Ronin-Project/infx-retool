select * from surveys.question
join surveys.specific_answer 
on surveys.specific_answer.specific_answer_uuid = any(surveys.question.specific_answer_uuids)
where question_uuid = {{new_question_uuid.value}}