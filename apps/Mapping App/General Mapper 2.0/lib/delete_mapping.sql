update concept_maps.concept_relationship
set review_status = 'deleted', deleted_by = {{current_user.fullName}}
where uuid={{mapped_targets.selectedRow.data.cr_uuid}}