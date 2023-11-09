select vs.title, vs.uuid from value_sets.value_set vs
join value_sets.value_set_version vsv on vsv.value_set_uuid=vs.uuid
where vsv.status='active'
order by vs.title ASC