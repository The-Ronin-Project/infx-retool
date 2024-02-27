insert into value_sets.value_set_rule
(uuid, value_set_version, property, operator, value, description, include, terminology_version, position, rule_group)
VALUES
({{uuid.v1()}}, {{urlparams.vs_version_uuid}}, 'display', 'regex', {{search_string.value}}, {{description_input.value}}, {{keyword_search_include.value == 'Include'}}, {{cpt_version_select.value}}, 3, 1)