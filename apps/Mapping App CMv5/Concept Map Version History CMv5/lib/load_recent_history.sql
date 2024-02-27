SELECT
    history.timestamp
    , history.mapping_uuid
    , sc.code_simple AS source_code_simple
    , sc.code_jsonb AS source_code_jsonb
    , sc.uuid AS sc_uuid
    , sc.display AS source_display
    , rc.display AS relationship
    , history.target_code
    , history.target_display
    , history.author
FROM concept_maps.relationship_codes rc
JOIN concept_maps.source_concept_data sc ON sc.concept_map_version_uuid={{urlparams.concept_map_version_uuid}}
JOIN (
SELECT
    history.timestamp
    , (history.new_val->>'source_concept_uuid')::uuid AS source_concept_uuid
    , (history.new_val->>'relationship_code_uuid')::uuid AS relationship_code_uuid
    , (history.new_val->>'uuid') AS mapping_uuid
    , (history.new_val->>'target_concept_code') AS target_code
    , (history.new_val->>'target_concept_display') AS target_display
    , (history.new_val->>'author') AS author 
FROM concept_maps.history WHERE
    history.table_name='concept_relationship'
    AND operation='INSERT'
    AND (history.new_val->>'author') = {{user_select.value}}
) history ON history.source_concept_uuid=sc.uuid
    AND history.relationship_code_uuid=rc.uuid
ORDER BY history.timestamp DESC
LIMIT 100
;