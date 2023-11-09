select DISTINCT body_system from icd_10_pcs.code
where section= any({{pcs_section.value}})
and body_system IS NOT NULL
order by body_system