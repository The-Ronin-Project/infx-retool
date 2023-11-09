select distinct sc.reason_for_no_map
from concept_maps.source_concept sc 
where sc.concept_map_version_uuid={{urlparams.concept_map_version_uuid}}