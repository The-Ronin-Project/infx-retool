select vsv.*,vs.name from value_sets.value_set vs
join (select distinct value_set_uuid,uuid,max(version) as version from value_sets.value_set_version group by uuid) vsv
on vs.uuid = vsv.value_set_uuid
--where vs.purpose = 'FHIR Interops'
order by vs.name