UPDATE concept_maps.source_concept
SET 
    assigned_mapper = CASE 
        WHEN NULLIF({{mapper_select.value}}, '') IS NOT NULL THEN {{mapper_select.value}}
        ELSE assigned_mapper
    END,
    assigned_reviewer = CASE 
        WHEN NULLIF({{reviewer_select.value}}, '') IS NOT NULL THEN {{reviewer_select.value}}
        ELSE assigned_reviewer
    END
WHERE 
    concept_map_version_uuid = {{urlparams.concept_map_version_uuid}}
    AND cast(uuid as text) = ANY({{concepts_table.selectedRow.data.map(x=>x.source_uuid)}});
