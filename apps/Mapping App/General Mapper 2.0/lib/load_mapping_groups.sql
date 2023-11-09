select distinct mapping_group, count(mapping_group)
from concept_maps.source_concept
where assigned_mapper={{user_select.value}}
and map_status = 'pending'
and concept_map_version_uuid = {{urlparams.concept_map_version_uuid}}
group by source_concept.mapping_group having count(mapping_group)>0