select concept_relationship.uuid as mapping_uuid, * from concept_maps.concept_relationship
join concept_maps.source_concept on source_concept.uuid = source_concept_uuid
where source_concept.concept_map_version_uuid = {{urlparams.concept_map_version_uuid}}
and source_concept.assigned_reviewer = {{select_user.value}}
and concept_relationship.review_status is null