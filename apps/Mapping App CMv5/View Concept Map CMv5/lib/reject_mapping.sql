update concept_maps.concept_relationship_data
set 
  review_status='rejected'
where uuid={{mapped_concepts.selectedRow.data.mapping_uuid}}