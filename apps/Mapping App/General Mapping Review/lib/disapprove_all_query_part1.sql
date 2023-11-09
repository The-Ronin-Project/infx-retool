update concept_maps.source_concept
set map_status='pending', reason_for_no_map=''
where cast(uuid as text) = ANY({{review_queue.selectedRow.data.map(x=>x.source_concept_uuid)}})