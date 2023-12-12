insert into value_sets.value_set_rule
(value_set_version, property, description, include, terminology_version, position, operator, value)
select {{new_concept_map_version_uuid.value}}, property, description, include, terminology_version, position, operator, value
from value_sets.value_set_rule
where value_set_version={{version_select.value}}