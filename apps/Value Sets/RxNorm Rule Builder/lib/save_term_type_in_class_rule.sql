insert into value_sets.value_set_rule
(uuid, value_set_version, property, operator, value, include, description, terminology_version, position, rule_group)
VALUES
({{ new_uuid }}, {{ value_set_version }}, {{property}}, {{operator}}, {{ value }}, {{include}}, {{ description }}, {{ terminology_version }}, {{ position }}, {{ rule_group }})