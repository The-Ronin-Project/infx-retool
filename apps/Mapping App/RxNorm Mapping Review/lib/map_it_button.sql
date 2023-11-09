update concept_maps.source_concept
set no_map = null, reason_for_no_map = NULL
where uuid = {{no_map_table.selectedRow.data.uuid}}