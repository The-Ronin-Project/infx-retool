update surveys.question 
set requires_question = {{requires_question_results.selectedRow.data.question_uuid}}
where question_uuid = {{new_question_uuid.value}}