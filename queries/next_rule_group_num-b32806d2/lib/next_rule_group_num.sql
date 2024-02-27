select coalesce(max(rule_group),0) + 1 as next_num from value_sets.value_set_rule
where value_set_version={{ vs_version_uuid }}