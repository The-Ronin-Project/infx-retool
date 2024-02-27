update concept_maps.source_concept_data
set map_status = 'pending'
where uuid={{history_table.selectedRow.data.sc_uuid}}