select coalesce(max(position),0) as max_num from value_sets.value_set_rule
where value_set_version={{ vs_version_uuid }}