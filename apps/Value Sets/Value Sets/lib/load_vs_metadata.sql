select * from value_sets.value_set as vs
join (select * from value_sets.value_set_version) as vsv on vs.uuid = vsv.value_set_uuid
where vs.uuid = {{value_set_select.value}}