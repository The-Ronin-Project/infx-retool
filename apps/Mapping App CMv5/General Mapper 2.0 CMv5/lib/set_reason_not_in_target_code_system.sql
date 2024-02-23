update concept_maps.source_concept_data
set 
  reason_for_no_map = 'Not in target code system'
WHERE uuid = ANY({{'{' + mapping_queue.selectedRow.data.map(data => '"' + data.uuid + '"').join(", ") + '}'}})