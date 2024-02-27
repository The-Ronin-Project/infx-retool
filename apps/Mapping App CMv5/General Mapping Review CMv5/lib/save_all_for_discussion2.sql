update concept_maps.concept_relationship_data
set review_comments = {{review_comment_all.value}}
where cast(uuid as text) = ANY({{review_queue.selectedRow.data.map(x=>x.mapping_uuid)}})