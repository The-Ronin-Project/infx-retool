update concept_maps.source_concept
set map_status = 'reviewed'
where cast(uuid as text) = ANY({{review_queue.selectedRow.data.map(x=>x.source_concept_uuid)}})