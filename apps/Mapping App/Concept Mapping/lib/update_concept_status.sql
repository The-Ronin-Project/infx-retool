update concept_maps.source_concept
set review_status = {{source_concepts.data.review_status}}
where uuid = {{source_concepts.selectedRow.data.uuid}}