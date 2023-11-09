select TO_CHAR(timestamp, 'HH12:MIPM DD MON YYYY') time_str, * from value_sets.expansion
where vs_version_uuid={{right_version_select.value}}
order by timestamp desc