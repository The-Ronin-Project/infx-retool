select count(DISTINCT sc.uuid) from concept_maps.concept_relationship cr 
join concept_maps.source_concept sc 
on cr.source_concept_uuid = sc.uuid
where sc.concept_map_version_uuid={{urlparams.concept_map_version_uuid}}
and review_status = 'reviewed'