select json_build_object(
  'depends_on_property', depends_on_property, 
  'depends_on_system', depends_on_system, 
  'depends_on_value_simple', depends_on_value_simple, 
  'depends_on_value_jsonb', depends_on_value_jsonb, 
  'depends_on_display', depends_on_display) 
  AS json_result  from custom_terminologies.code_depends_on
where uuid = {{mapping_queue.selectedRow.data[0].custom_terminology_code_uuid}}