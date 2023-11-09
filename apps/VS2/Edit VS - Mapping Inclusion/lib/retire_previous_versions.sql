update value_sets.value_set_version
set status='retired'
where status='active'
and value_set_uuid={{value_set_version_metadata.data.value_set_uuid[0]}}
and uuid != {{urlparams.uuid}}