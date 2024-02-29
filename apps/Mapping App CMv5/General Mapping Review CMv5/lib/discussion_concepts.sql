SELECT  
  cr.mapped_by,  
  pmu.first_last_name as assigned_mapper,  
  cr.relationship_display,  
  sc.uuid,  
  sc.code_simple,  
  sc.code_jsonb,  
  sc.display,  
  sc.custom_terminology_code_uuid,  
  cr.mapping_comments,  
  cr.review_comments,  
  cr.target_concept_code,  
  cr.target_concept_display,  
  ctc.additional_data->>'count_of_resources_affected' as count_of_resources_affected  
FROM concept_maps.source_concept_data as sc  
LEFT JOIN project_management.user as pmu ON sc.assigned_mapper = pmu.uuid  
LEFT JOIN (  
    SELECT  
      c_rel.source_concept_uuid,  
      c_rel.mapped_by,  
      c_rel.mapping_comments,  
      c_rel.review_comments,  
      c_rel.target_concept_code,  
      c_rel.target_concept_display,  
      r_codes.display as relationship_display  
    FROM concept_maps.concept_relationship_data c_rel  
    LEFT JOIN concept_maps.relationship_codes r_codes ON c_rel.relationship_code_uuid = r_codes.uuid  
  ) cr ON sc.uuid = cr.source_concept_uuid  
LEFT JOIN custom_terminologies.code_data ctc ON sc.custom_terminology_code_uuid = ctc.uuid  
WHERE sc.concept_map_version_uuid = {{urlparams.concept_map_version_uuid}}  
AND sc.save_for_discussion IS TRUE;