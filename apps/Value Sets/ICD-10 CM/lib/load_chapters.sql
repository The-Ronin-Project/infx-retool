select * from icd_10_cm.chapter
where version_uuid = {{version_select.value}}
order by chapter_number