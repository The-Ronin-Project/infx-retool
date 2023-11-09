select count(*)
from concept_maps.source_concept
where concept_map_version_uuid={{urlparams.concept_map_version_uuid}}
and assigned_reviewer is null