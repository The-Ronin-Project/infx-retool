UPDATE concept_maps.source_concept_data  
SET  
  assigned_mapper={{mapper_select2.value}},  
  assigned_reviewer={{reviewer_select2.value}},  
  mapping_group={{match_query.value}}  
WHERE concept_map_version_uuid={{urlparams.concept_map_version_uuid}}  
AND ( (lower(display) like lower({{match_query.value}})  
  OR lower(code_simple) like lower({{match_query.value}}))  
  OR lower(code_jsonb->>'code') like lower({{match_query.value}}) )  
AND assigned_mapper IS NULL  