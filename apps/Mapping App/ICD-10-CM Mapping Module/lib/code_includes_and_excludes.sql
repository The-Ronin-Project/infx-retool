select * from icd_10_cm.code
where  code = {{display_results.selectedRow.data.code}}
and version_uuid = {{version_select.value}}