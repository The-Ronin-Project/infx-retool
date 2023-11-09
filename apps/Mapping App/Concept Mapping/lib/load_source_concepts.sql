select * from concept_maps.source_concept 
where concept_map_version_uuid = {{urlparams.uuid}}
and assigned_mapper = {{map_assignee.value}}
and map_status = ANY({{assignment_que_status_filter.value}})