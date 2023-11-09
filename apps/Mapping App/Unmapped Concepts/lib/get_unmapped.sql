SELECT * from concept_maps.source_concept 
where concept_map_version_uuid={{urlparams.concept_map_version_uuid}}
and uuid not in 
(select source_concept_uuid from concept_maps.concept_relationship)