select * from concept_maps.concept_relationship
join (select uuid as sc_uuid, code as sc_code, display as sc_display, additional_context as abreviations from concept_maps.source_concept) as sc on concept_relationship.source_concept_uuid = sc.sc_uuid
join (select uuid as rc_uuid, code as rc_code, display as rc_display from concept_maps.relationship_codes) as rc on relationship_code_uuid = rc.rc_uuid
where concept_relationship.concept_map_version_uuid = {{versions_table.selectedRow.data.uuid}}