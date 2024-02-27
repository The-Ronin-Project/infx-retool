update value_sets.value_set_rule
set rule_group={{rules_table.recordUpdates[0].rule_group}}, value={{rules_table.recordUpdates[0].value}}
where uuid={{rules_table.selectedRow.data.uuid}}