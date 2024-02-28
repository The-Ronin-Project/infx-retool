SELECT    
  cdo.depends_on_value_simple,  
  cdo.depends_on_value_jsonb 
FROM custom_terminologies.code_depends_on cdo  
INNER JOIN custom_terminologies.code_data cd  
  ON cdo.code_uuid = cd.uuid  
WHERE cd.uuid = {{ discussion_table.selectedRow.data.custom_terminology_code_uuid }};  
