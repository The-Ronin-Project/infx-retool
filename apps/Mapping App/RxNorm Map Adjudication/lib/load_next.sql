select source_concept_uuid from concept_maps.suggestion
join concept_maps.source_concept on source_concept.uuid = suggestion.source_concept_uuid
where accepted IS null
and source_concept.assigned_reviewer = {{select_user.value}}
and additional_info is not null
limit 1