select * from value_sets.value_set_version vsv
join value_sets.value_set vs
on vsv.value_set_uuid = vs.uuid
where vsv.uuid = {{ vs_version_uuid }}