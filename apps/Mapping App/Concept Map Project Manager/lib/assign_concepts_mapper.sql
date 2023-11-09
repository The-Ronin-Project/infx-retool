UPDATE concept_maps.source_concept
set assigned_mapper = {{team_mate.value}} where source_concept.uuid IN
	(select uuid from concept_maps.source_concept 
   where assigned_mapper IS NULL
   and concept_map_version_uuid = {{urlparams.uuid}}
   LIMIT {{mapper_qty.value}})