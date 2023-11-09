select source_concept.uuid as source_concept_uuid, suggestion.uuid as suggestion_uuid, source_concept.display as source_display, suggestion.display as suggestion_display, suggestion.code, suggestion.additional_info from concept_maps.suggestion
join concept_maps.source_concept on suggestion.source_concept_uuid = source_concept.uuid
where source_concept.uuid = {{load_next.data.source_concept_uuid[0]}}
