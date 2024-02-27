select distinct * from icd_10_pcs.code
where section=any({{pcs_section.value}})
and body_system=any({{body_system.value}})
and root_operation=any({{root_operation.value}})
and body_part=any({{body_part.value}})
and approach =any({{approach_select.value}})
and device=any({{device_select.value}})
and qualifier=any({{qualifier_select.value}})