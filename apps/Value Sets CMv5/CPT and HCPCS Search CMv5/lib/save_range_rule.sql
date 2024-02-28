insert into value_sets.value_set_rule
(uuid, value_set_version, property, operator, value, description, include, terminology_version, position, rule_group)
VALUES
({{uuid.v1()}}, {{urlparams.vs_version_uuid}}, 'code', 'in', {{selected_ranges.value}}, {{description_input.value}}, true, {{cpt_version_select.value}}, 2, 1)