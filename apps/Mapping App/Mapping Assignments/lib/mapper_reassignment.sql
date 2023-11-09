update concept_maps.source_concept
set assigned_mapper = {{select_mapper.value}}
where concept_map_version_uuid={{urlparams.concept_map_version_uuid}}
and assigned_reviewer is not distinct from {{assignment_queue.selectedRow.data.reviewer_uuid}}
and mapping_group is not distinct from {{assignment_queue.selectedRow.data.mapping_group}}
and map_status = 'pending'