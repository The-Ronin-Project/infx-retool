delete from concept_maps.concept_relationship
where uuid={{mapped_targets.selectedRow.data.cr_uuid}} AND
concept_map_version_uuid = {{urlparams.uuid}}