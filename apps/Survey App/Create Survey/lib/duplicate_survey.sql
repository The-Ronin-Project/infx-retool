insert into surveys.survey 
(uuid, name, title, status, experimental, description, last_modified_date, last_modified_user)
select 
{{duplicate_survey_uuid.value}}, concat(name, '_copy'), concat(title, ' copy'), status, experimental, description, now(), {{current_user.fullName}}
from surveys.survey 
where uuid={{table1.selectedRow.data.uuid}}