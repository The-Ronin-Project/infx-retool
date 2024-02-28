select * from value_sets.value_set_version vsv
join value_sets.value_set vs
on vs.uuid = vsv.value_set_uuid
where vsv.uuid={{urlparams.uuid}}