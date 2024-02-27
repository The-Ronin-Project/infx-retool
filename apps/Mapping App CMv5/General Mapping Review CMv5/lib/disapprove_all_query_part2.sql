update concept_maps.concept_relationship_data
set review_status = 'rejected', 
review_comments = {{review_comment_all.value}}, 
reviewed_by = {{get_current_user_uuid.data.uuid[0]}}
where cast(uuid as text) = ANY({{review_queue.selectedRow.data.map(x=>x.mapping_uuid)}})