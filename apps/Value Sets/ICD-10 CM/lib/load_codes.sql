select * from icd_10_cm.code
where  section_uuid = {{section_table.selectedRow.data.uuid}}
and version_uuid = {{version_select.value}}