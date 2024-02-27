select json_build_object('depends_on_value', depends_on_value) AS json_result  from custom_terminologies.code
where uuid = {{review_queue.selectedRow.data[0].custom_terminology_uuid}}