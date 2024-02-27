select *, ctcd.additional_data->>'count_of_resources_affected' as count_of_resources_affected    
from concept_maps.source_concept_data sc    
left join custom_terminologies.code_data ctcd
on sc.custom_terminology_code_uuid=ctcd.uuid      
where sc.concept_map_version_uuid={{urlparams.concept_map_version_uuid}}    
and (lower(sc.display) like any({{transform_query_match.value.split(",")}})    
or lower(CASE    
            WHEN sc.code_simple IS NOT NULL THEN sc.code_simple    
            ELSE sc.code_jsonb->>'code'    
          END) like any({{transform_query_match.value.split(",")}}))    
and sc.assigned_mapper is null    
and sc.map_status = 'pending'