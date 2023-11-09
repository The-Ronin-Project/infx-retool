UPDATE concept_maps.source_concept
set assigned_reviewer = {{team_mate.value}} where uuid IN
	(select uuid from concept_maps.source_concept 
   where assigned_reviewer IS NULL
   and assigned_mapper is not NULL
   --and assigned_mapper is not {{team_mate.value}}
   and concept_map_version_uuid = {{urlparams.uuid}}
   and map_status = 'ready for review'
   LIMIT {{reviewer_qty.value}})
