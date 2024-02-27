update concept_maps.source_concept_data
set 
  map_status = 'reviewed', 
  save_for_discussion = FALSE
where uuid = {{discussion_table.selectedRow.data.uuid}}