select json_build_object('depends_on_property', depends_on_property, 'depends_on_system', depends_on_system, 'depends_on_value', depends_on_value, 'depends_on_display', depends_on_display) AS json_result  from custom_terminologies.code
where uuid = {{mapping_queue.selectedRow.data[0].custom_terminology_uuid}}