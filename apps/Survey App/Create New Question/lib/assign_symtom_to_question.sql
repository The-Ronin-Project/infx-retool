update surveys.question
set symptom_uuids = array_append(symptom_uuids,{{symptom_search_results.selectedRow.data.symptom_uuid}})
where question_uuid = {{new_question_uuid.value}}