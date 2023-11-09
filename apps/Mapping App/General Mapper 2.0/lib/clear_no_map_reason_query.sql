update concept_maps.source_concept
set reason_for_no_map = ''
where uuid in {{mapping_queue.selectedRow.data.map(x=>x.uuid)}}