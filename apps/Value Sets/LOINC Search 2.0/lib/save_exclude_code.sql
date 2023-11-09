insert into value_sets.value_set_rule
(uuid, value_set_version, property, operator, value, include, description, terminology_version, position, rule_group)
VALUES
({{uuid.v1()}}, {{urlparams.vs_version_uuid}}, 'code', 'in', {{exclusions_code.value}}, false, {{description_input.value}}, {{loinc_version_select.value}}, {{parseInt(max_position_num.data.max_num) + 7}}, {{parseInt(next_rule_group_num.data.next_num)}})