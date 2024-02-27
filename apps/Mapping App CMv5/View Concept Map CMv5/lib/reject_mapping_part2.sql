update concept_maps.source_concept_data
set 
  map_status ='pending'
  no_map_reason = NULL
where uuid={{mapped_concepts.selectedRow.data.source_concept_uuid}}