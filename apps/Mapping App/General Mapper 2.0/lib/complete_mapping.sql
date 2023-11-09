update concept_maps.source_concept
set map_status='ready for review'
where uuid={{mapping_queue.selectedRow.data[0].uuid}}