SELECT
  cdo.depends_on_property,
  cdo.depends_on_value_jsonb,
  cdo.depends_on_system,
  cdo.depends_on_display,
  cdo.depends_on_value_schema,
  cdo.depends_on_value_simple  
FROM custom_terminologies.code_depends_on cdo  
INNER JOIN custom_terminologies.code_data cd  
  ON cdo.code_uuid = cd.uuid  
WHERE cd.uuid = {{ review_queue.selectedRow.data[0].custom_terminology_code_uuid }};  
