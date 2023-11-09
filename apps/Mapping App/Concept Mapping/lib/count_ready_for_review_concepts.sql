select count(uuid)
from concept_maps.source_concept where map_status = 'ready for review'
and concept_map_version_uuid = {{urlparams.uuid}}
and assigned_mapper = {{map_assignee.value}}