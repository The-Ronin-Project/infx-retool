SELECT sc.*, 
    sc.code_simple AS source_code_simple,
    sc.code_jsonb AS source_code_jsonb,
    sc.display AS source_display, 
    sc.uuid AS source_uuid, 
    pmu.uuid AS mapper_uuid, 
    pmu.first_last_name AS assigned_mapper, 
    pmu2.uuid AS reviewer_uuid, 
    pmu2.first_last_name AS assigned_reviewer, 
    cdo.depends_on_property,
    cdo.depends_on_value_schema,
    cdo.depends_on_value_simple,
    cdo.depends_on_value_jsonb,
    cdo.depends_on_display,
    cdo.depends_on_system
FROM 
    concept_maps.source_concept_data sc
LEFT JOIN 
    project_management.user pmu
ON 
    pmu.uuid = sc.assigned_mapper
LEFT JOIN 
    project_management.user pmu2
ON 
    sc.assigned_reviewer = pmu2.uuid
LEFT JOIN 
    custom_terminologies.code_data ctd 
ON 
    sc.custom_terminology_code_uuid = ctd.uuid
LEFT JOIN
    custom_terminologies.code_depends_on cdo
ON
    sc.custom_terminology_code_uuid = cdo.code_uuid
LEFT JOIN 
    concept_maps.concept_relationship_data cr 
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
ORDER BY COALESCE(sc.code_simple::jsonb, sc.code_jsonb)