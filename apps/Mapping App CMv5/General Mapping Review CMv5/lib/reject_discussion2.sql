update concept_maps.source_concept_data
set 
  map_status = 'pending', 
  save_for_discussion = FALSE,
  reason_for_no_map = NULL
where uuid = {{discussion_table.selectedRow.data.uuid}}