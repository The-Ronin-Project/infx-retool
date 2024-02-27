select value_set.title, vsv.uuid as value_set_version_uuid, vsv.version 
from value_sets.value_set_version vsv
join value_sets.value_set on vsv.value_set_uuid=value_set.uuid
where value_set_uuid={{load_concept_map_version_metadata.data.target_value_set_uuid[0]}}
order by version DESC
limit 1