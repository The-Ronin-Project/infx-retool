select count (assigned_to)
from project_management.value_set_assignment as pm
join(select * from value_sets.value_set_version) as vsversion
on pm.value_set_version_uuid=vsversion.uuid
where assigned_to = {{primary_assignee.value}}
and status='in progress'
and assigned_to is not null