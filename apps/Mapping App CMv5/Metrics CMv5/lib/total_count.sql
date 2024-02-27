select count(*)
from concept_maps.source_concept_data
where concept_map_version_uuid={{urlparams.concept_map_version_uuid}}