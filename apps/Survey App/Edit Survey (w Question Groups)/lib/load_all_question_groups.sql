select * 
from surveys.question_group 
join surveys.symptom
on symptom.symptom_uuid = question_group.symptom_uuid
order by title asc;