select vs.uuid vs_uuid, vsv.uuid vsv_uuid, * from value_sets.value_set_version vsv
join value_sets.value_set vs
on vs.uuid = vsv.value_set_uuid
where vs.name = {{left_vs_name.value}}
order by version desc