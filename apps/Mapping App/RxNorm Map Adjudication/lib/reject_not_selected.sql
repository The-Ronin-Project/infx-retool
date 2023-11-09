Update concept_maps.suggestion
Set accepted = FALSE
Where uuid != {{suggestions_table.selectedRow.data.suggestion_uuid}} 
and source_concept_uuid = {{suggestions_table.selectedRow.data.source_concept_uuid}}