select count(*) match_count from concept_maps.source_concept_data
where concept_map_version_uuid={{urlparams.concept_map_version_uuid}}
AND (  
    lower(display) LIKE ANY({{transform_query_match.value.split(",")}})  
    OR lower(code_simple) LIKE ANY({{transform_query_match.value.split(",")}})  
    OR lower(code_jsonb->>'code') LIKE ANY({{transform_query_match.value.split(",")}})  
)  
and assigned_mapper is null
and map_status = 'pending'