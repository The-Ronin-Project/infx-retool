update concept_maps.concept_relationship
set review_comment = {{review_comment_all.value}}
where cast(uuid as text) = ANY({{review_queue.selectedRow.data.map(x=>x.mapping_uuid)}})