select vs.title, vs.contact, vsv.uuid as version_uuid from value_sets.value_set_version vsv
join value_sets.value_set vs on vsv.value_set_uuid=vs.uuid
where vs.contact={{current_user.fullName}}
and vsv.status='pending'