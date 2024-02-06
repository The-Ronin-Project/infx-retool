select source_concept.* from concept_maps.source_concept
join concept_maps.concept_relationship
on concept_relationship.source_concept_uuid = source_concept.uuid
where source_concept.assigned_mapper = {{user_select.value}}
and source_concept.concept_map_version_uuid={{urlparams.concept_map_version_uuid}}
and source_concept.save_for_discussion = FALSE
and concept_relationship.review_status = 'rejected'
order by code ASC