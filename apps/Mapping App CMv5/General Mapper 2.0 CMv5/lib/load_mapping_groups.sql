select distinct mapping_group, count(mapping_group)
from concept_maps.source_concept_data sc
where sc.assigned_mapper={{user_select.value}}
and sc.map_status = 'pending'
and sc.concept_map_version_uuid = {{urlparams.concept_map_version_uuid}}
group by sc.mapping_group having count(mapping_group)>0