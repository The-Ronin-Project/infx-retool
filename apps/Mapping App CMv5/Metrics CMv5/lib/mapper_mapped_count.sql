SELECT pmu.first_last_name, sc.assigned_mapper, COUNT(*)  
FROM concept_maps.source_concept_data sc  
JOIN project_management.user pmu ON pmu.uuid = sc.assigned_mapper  
WHERE sc.concept_map_version_uuid = {{urlparams.concept_map_version_uuid}}  
AND (sc.map_status = 'ready for review' OR sc.map_status = 'reviewed')  
GROUP BY pmu.first_last_name, sc.assigned_mapper  
