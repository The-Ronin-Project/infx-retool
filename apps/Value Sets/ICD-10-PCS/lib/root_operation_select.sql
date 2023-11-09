select distinct root_operation from icd_10_pcs.code
where section=any({{pcs_section.value}})
and body_system=any({{body_system.value}})
and root_operation IS NOT NULL