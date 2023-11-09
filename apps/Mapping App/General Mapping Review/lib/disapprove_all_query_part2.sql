update concept_maps.concept_relationship
set review_status = 'rejected', review_comment = {{review_comment_all.value}}, reviewed_by = {{current_user.fullName}}
where cast(uuid as text) = ANY({{review_queue.selectedRow.data.map(x=>x.mapping_uuid)}})