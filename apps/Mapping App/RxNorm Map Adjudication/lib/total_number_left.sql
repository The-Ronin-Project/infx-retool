select count(distinct source_concept.uuid) as count_left from concept_maps.source_concept
join concept_maps.suggestion on suggestion.source_concept_uuid = source_concept.uuid
and accepted is null
