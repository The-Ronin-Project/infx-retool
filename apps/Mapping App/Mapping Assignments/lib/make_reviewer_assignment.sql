update concept_maps.source_concept
set assigned_reviewer = {{select_reviewer.value}}
where concept_map_version_uuid={{urlparams.concept_map_version_uuid}}
and assigned_mapper is not distinct from {{assignment_queue.selectedRow.data.mapper_uuid}}
and mapping_group is not distinct from {{assignment_queue.selectedRow.data.mapping_group}}
and map_status != 'reviewed'