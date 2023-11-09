select cr.uuid as cr_uuid, * from concept_maps.concept_relationship as cr
join (select uuid as rc_uuid, display as Relationship from concept_maps.relationship_codes) as rc on rc.rc_uuid=cr.relationship_code_uuid
join concept_maps.source_concept on source_concept.uuid = cr.source_concept_uuid
where source_concept_uuid = {{source_concepts.selectedRow.data.uuid}} AND
cr.concept_map_version_uuid = {{urlparams.uuid}}
