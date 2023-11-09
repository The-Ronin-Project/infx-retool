update concept_maps.source_concept
set map_status ='pending'
where uuid={{mapped_concepts.selectedRow.data.source_concept_uuid}}