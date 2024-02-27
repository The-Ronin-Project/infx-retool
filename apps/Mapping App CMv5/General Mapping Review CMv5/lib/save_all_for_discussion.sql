update concept_maps.source_concept_data
set save_for_discussion = TRUE
where cast(uuid as text) = ANY({{review_queue.selectedRow.data.map(x=>x.source_concept_uuid)}})