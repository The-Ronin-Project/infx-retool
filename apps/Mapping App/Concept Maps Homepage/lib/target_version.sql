select uuid, version from value_sets.value_set_version 
where value_set_uuid = {{target_terminology.value}}
and status = 'active'
order by version DESC