select * from value_sets.expansion_member
where expansion_uuid = {{load_expansion_uuid.data.uuid[0]}}
order by code