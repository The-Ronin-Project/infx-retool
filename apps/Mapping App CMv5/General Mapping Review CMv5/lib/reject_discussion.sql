update concept_maps.concept_relationship_data
set 
  review_status = 'rejected',   
  reviewed_by = {{get_current_user_uuid.data.uuid[0]}}
where source_concept_uuid = {{discussion_table.selectedRow.data.uuid}}