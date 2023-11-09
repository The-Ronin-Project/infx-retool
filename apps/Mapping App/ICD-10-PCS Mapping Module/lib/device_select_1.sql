select distinct device from icd_10_pcs.code
where section=any({{pcs_section.value}})
and body_system=any({{body_system.value}})
and root_operation=any({{root_operation.value}})
and body_part=any({{body_part.value}})
and approach =any({{approach_select.value}})
and device IS NOT NULL