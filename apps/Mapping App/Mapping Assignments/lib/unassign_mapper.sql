update concept_maps.source_concept
set assigned_mapper=null, mapping_group=null
where concept_map_version_uuid={{urlparams.concept_map_version_uuid}}
and assigned_mapper is not distinct from {{assignment_queue.selectedRow.data.mapper_uuid}}
and assigned_reviewer is not distinct from {{assignment_queue.selectedRow.data.reviewer_uuid}} 
and mapping_group is not distinct from {{assignment_queue.selectedRow.data.mapping_group}}
