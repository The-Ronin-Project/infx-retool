select uuid, provider_label, title, description 
from surveys.question_group 
join surveys.symptom
on symptom.symptom_uuid=question_group.symptom_uuid
where status != 'retired'
order by title asc