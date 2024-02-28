UPDATE concept_maps.concept_relationship_data  
SET review_status = 'reviewed',  
    review_comments = {{review_comment_all.value}},  
    reviewed_by = {{get_current_user_uuid.data.uuid[0]}}  
WHERE cast(uuid as text) = ANY({{review_queue.selectedRow.data.map(x=>x.mapping_uuid)}}) 