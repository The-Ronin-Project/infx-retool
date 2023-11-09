select * from surveys.symptom where symptom_uuid in
(select unnest(symptom_uuids) from surveys.question
where question_uuid={{new_question_uuid.value}})