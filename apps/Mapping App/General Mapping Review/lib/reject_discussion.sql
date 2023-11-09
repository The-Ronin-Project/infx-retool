update concept_maps.concept_relationship
set review_status = 'rejected', reviewed_by = {{current_user.fullName}}
where source_concept_uuid = {{discussion_table.selectedRow.data.uuid}}