update concept_maps.source_concept_data
set 
  save_for_discussion = true
where uuid IN ({{ mapping_queue.selectedRow.data.map(data => data.uuid).join(", ") }})