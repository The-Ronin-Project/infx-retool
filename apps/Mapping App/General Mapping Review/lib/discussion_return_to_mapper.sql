update concept_maps.source_concept
set save_for_discussion = 'false'
where uuid = {{discussion_table.selectedRow.data.uuid}}
