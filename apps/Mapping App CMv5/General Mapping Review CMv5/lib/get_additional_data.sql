SELECT    
  cd.additional_data  
FROM custom_terminologies.code_data cd  
WHERE cd.uuid = {{ review_queue.selectedRow.data[0].custom_terminology_code_uuid }}; 