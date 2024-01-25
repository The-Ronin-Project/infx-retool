UPDATE value_sets.value_set_version
SET
  effective_start = {{table1.recordUpdates[0].effective_start}},
  effective_end = 
  {{table1.recordUpdates[0].effective_end}},
  description = 
  {{table1.recordUpdates[0].description}}
WHERE
uuid = {{table1.selectedRow.data.uuid}}