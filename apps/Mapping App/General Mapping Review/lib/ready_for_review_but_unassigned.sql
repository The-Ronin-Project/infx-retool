select count(*) from concept_maps.concept_relationship
join concept_maps.source_concept on concept_relationship.concept_map_version_uuid = source_concept.concept_map_version_uuid
where concept_relationship.concept_map_version_uuid = {{urlparams.concept_map_version_uuid}}
and review_status = 'ready for review'
and assigned_mapper = null