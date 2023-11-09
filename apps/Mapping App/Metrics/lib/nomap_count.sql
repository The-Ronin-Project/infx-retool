select count(*) from concept_maps.concept_relationship cr
join concept_maps.source_concept sc on cr.source_concept_uuid=sc.uuid 
where sc.concept_map_version_uuid={{urlparams.concept_map_version_uuid}}
and cr.target_concept_code = 'No map'
and sc.save_for_discussion = FALSE