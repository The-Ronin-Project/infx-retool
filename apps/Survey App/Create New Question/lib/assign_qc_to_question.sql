update surveys.question
set question_characteristic_uuid = {{qc_table.selectedRow.data.question_characteristic_uuid}}
where question_uuid = {{new_question_uuid.value}}