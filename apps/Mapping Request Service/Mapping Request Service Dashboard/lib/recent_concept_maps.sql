SELECT 
    cm.title,
    -- cm.name,
    cmv.created_date,
    cmv.version,
    cmv.status,
    cmv.count_loaded_concepts,
    cmv.uuid
FROM 
    concept_maps.concept_map cm
JOIN 
    concept_maps.concept_map_version cmv 
ON 
    cm.uuid = cmv.concept_map_uuid
WHERE
    cmv.created_date IS NOT NULL
    AND cmv.count_loaded_concepts IS NOT NULL
ORDER BY 
    cmv.created_date DESC;
