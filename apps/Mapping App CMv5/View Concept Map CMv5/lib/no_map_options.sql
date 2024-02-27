select distinct sc.no_map
from concept_maps.source_concept_data sc 
where sc.concept_map_version_uuid={{urlparams.concept_map_version_uuid}}