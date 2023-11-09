select count(uuid)
from concept_maps.source_concept
where assigned_mapper is NULL AND concept_map_version_uuid = {{urlparams.uuid}}