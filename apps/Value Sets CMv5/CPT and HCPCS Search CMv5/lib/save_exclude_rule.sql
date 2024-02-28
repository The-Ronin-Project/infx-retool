insert into value_sets.value_set_rule
(uuid, value_set_version, property, operator, value, description, include, terminology_version, position, rule_group)
VALUES
({{uuid.v4()}}, {{urlparams.vs_version_uuid}}, 'code', 'in', {{JSON.stringify(exclude_codes.value.split(','))}}, {{description_input.value}}, false, {{cpt_version_select.value}}, 3, 1)