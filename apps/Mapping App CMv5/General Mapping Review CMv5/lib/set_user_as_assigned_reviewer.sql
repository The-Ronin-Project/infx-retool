update concept_maps.source_concept_data
set assigned_reviewer={{get_current_user_uuid.data.uuid[0]}}
where concept_map_version_uuid={{urlparams.concept_map_version_uuid}}
and cast(uuid as text) = ANY({{review_queue.selectedRow.data.map(x=>x.source_concept_uuid)}})