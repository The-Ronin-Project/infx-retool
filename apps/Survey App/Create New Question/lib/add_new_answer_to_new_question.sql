update surveys.question 
set specific_answer_uuids = array_append(specific_answer_uuids, {{new_answer_uuid.value}})
where question_uuid = {{new_question_uuid.value}}