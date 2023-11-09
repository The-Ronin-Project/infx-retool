select cr.uuid as mapping_uuid, * from concept_maps.concept_relationship as cr
join concept_maps.relationship_codes as rc on cr.relationship_code_uuid = rc.uuid
where source_concept_uuid = {{source_concepts.selectedRow.data.uuid}}