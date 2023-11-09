update concept_maps.source_concept
set reason_for_no_map = 'Not enough information'
WHERE uuid = ANY({{'{' + mapping_queue.selectedRow.data.map(data => '"' + data.uuid + '"').join(", ") + '}'}})