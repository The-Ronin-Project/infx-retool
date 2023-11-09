select count (reviewer)
from project_management.value_set_assignment as pm
join(select * from value_sets.value_set_version) as vsversion
on pm.value_set_version_uuid=vsversion.uuid
where reviewer = {{reviewer.value}}
and (status='in progress'
or status='ready for review')
and (reviewer is not null)
