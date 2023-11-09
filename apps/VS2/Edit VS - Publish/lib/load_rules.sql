select value_set_rule.uuid uuid, rule_group, position, description, property, operator, value, include, value_set_version, terminology_version, terminology, version 
from value_sets.value_set_rule
join terminology_versions tv
on terminology_version=tv.uuid
where value_set_version = {{urlparams.uuid}}
order by rule_group, terminology, include