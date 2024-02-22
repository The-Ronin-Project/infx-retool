update concept_maps.source_concept
set 
  map_status ='pending', 
  reason_for_no_map = NULL
where uuid={{mapped_concepts.selectedRow.data.source_concept_uuid}}