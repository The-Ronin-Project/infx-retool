update surveys.question 
set requires_question = NULL
where question_uuid={{new_question_uuid.value}}