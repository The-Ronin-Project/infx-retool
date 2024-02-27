select distinct cr.uuid mapping_uuid 
from concept_maps.concept_relationship_data cr
join concept_maps.source_concept_data sc 
on sc.uuid = cr.source_concept_uuid
where sc.concept_map_version_uuid = {{urlparams.concept_map_version_uuid}}