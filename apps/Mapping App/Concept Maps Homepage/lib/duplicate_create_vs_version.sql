insert into value_sets.value_set_version
(value_set_uuid, uuid, effective_start, effective_end, comments, description, version, status, created_date)
VALUES
({{new_concept_map_uuid.value}}, {{new_concept_map_version_uuid.value}}, {{effective_date_input.startValue}}, {{effective_date_input.endValue}}, '', 'Initial version', 1, 'draft', now())