UPDATE concept_maps.source_concept
SET reason_for_no_map = 'Other'
WHERE uuid = ANY({{'{' + mapping_queue.selectedRow.data.map(data => '"' + data.uuid + '"').join(", ") + '}'}})
