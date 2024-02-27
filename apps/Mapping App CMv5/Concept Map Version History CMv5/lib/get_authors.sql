SELECT DISTINCT pmu.first_last_name  
FROM concept_maps.concept_relationship_data cr  
JOIN concept_maps.source_concept_data sc ON cr.source_concept_uuid = sc.uuid  
JOIN project_management.user pmu ON cr.mapped_by = pmu.uuid  
WHERE sc.concept_map_version_uuid = {{urlparams.concept_map_version_uuid}}  