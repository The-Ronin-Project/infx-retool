update concept_maps.source_concept
set map_status = 'pending', save_for_discussion = FALSE
where uuid = {{discussion_table.selectedRow.data.uuid}}