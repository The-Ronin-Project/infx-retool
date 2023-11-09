SELECT sc.*, 
    sc.code AS source_code, 
    sc.display AS source_display, 
    sc.uuid AS source_uuid, 
    pmu.uuid AS mapper_uuid, 
    pmu.first_last_name AS assigned_mapper, 
    pmu2.uuid AS reviewer_uuid, 
    pmu2.first_last_name AS assigned_reviewer, 
    ctc.additional_data->>'count_of_resources_affected' AS count_of_resources_affected 
FROM 
    concept_maps.source_concept sc
LEFT JOIN 
    project_management.user pmu
ON 
    pmu.uuid = sc.assigned_mapper
LEFT JOIN 
    project_management.user pmu2
ON 
    sc.assigned_reviewer = pmu2.uuid
LEFT JOIN 
    custom_terminologies.code ctc 
ON 
    sc.custom_terminology_uuid = ctc.uuid
LEFT JOIN 
    concept_maps.concept_relationship cr 
ON 
    sc.uuid = cr.source_concept_uuid
WHERE 
    sc.concept_map_version_uuid={{urlparams.concept_map_version_uuid}}
    AND (
        CASE
            WHEN {{unassigned_mapper_switch.value}} = true THEN sc.assigned_mapper IS NULL
            ELSE true
        END
    )
    AND sc.map_status = 'pending'
    AND cr.source_concept_uuid IS NULL
ORDER BY 
    sc.code ASC