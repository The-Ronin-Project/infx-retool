select * from project_management.value_set_assignment as pm
full outer join (select * from value_sets.value_set_version) as vsversion
on pm.value_set_version_uuid=vsversion.uuid
join(select * from value_sets.value_set) as vs
on vsversion.value_set_uuid=vs.uuid
where status = 'active'