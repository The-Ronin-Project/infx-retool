insert into value_sets.value_set_rule
(position, description, property, operator, value, include, terminology_version, value_set_version,rule_group)
select position, description, property, operator, value, include, terminology_version, {{textInput4.value}}, rule_group
from value_sets.value_set_rule
where value_set_version in 
(select uuid from value_sets.value_set_version
where value_set_uuid={{urlparams.uuid}}
order by version DESC
limit 1
offset 1)