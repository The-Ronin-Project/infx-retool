update concept_maps.source_concept_data
set assigned_reviewer={{reassign_reviewer.selectedItem.user_uuid}}
where concept_map_version_uuid={{urlparams.concept_map_version_uuid}}
and cast(uuid as text) = ANY({{review_queue.selectedRow.data.map(x=>x.source_concept_uuid)}})