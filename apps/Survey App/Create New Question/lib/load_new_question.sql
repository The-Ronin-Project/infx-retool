select * from surveys.question 
left join surveys.question_characteristic
on surveys.question.question_characteristic_uuid = surveys.question_characteristic.question_characteristic_uuid
left join surveys.symptom
on surveys.symptom.symptom_uuid = any(surveys.question.symptom_uuids)
where question_uuid={{new_question_uuid.value}}