select distinct sc.map_status
from concept_maps.concept_relationship cr
join concept_maps.source_concept sc 
on sc.uuid=cr.source_concept_uuid
where sc.concept_map_version_uuid={{urlparams.concept_map_version_uuid}}