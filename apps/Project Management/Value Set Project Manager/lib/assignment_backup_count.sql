select count (assignment_back_up)
from project_management.value_set_assignment as pm
join(select * from value_sets.value_set_version) as vsversion
on pm.value_set_version_uuid=vsversion.uuid
where assignment_back_up = {{backup_asignee.value}}
and status='in progress'
and assignment_back_up is not null