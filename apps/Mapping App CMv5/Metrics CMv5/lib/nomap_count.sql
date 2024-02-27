select count(*) from concept_maps.concept_relationship_data cr
join concept_maps.source_concept_data sc on cr.source_concept_uuid=sc.uuid 
where sc.concept_map_version_uuid={{urlparams.concept_map_version_uuid}}
and cr.target_concept_code = 'No map'
and sc.save_for_discussion = FALSE