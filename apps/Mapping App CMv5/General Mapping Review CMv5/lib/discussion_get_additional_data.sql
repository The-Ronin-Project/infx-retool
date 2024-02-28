SELECT    
  cd.additional_data  
FROM custom_terminologies.code_data cd  
WHERE cd.uuid = {{ discussion_table.selectedRow.data.custom_terminology_code_uuid }}; 