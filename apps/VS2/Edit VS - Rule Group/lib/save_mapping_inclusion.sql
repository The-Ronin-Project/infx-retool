insert into value_sets.mapping_inclusion
(uuid, vs_version_uuid, concept_map_name, relationship_types, match_source_or_target)
VALUES
({{uuid.v1()}}, {{urlparams.uuid}}, {{concept_map_select.value}}, {{relationship_type_select.value}}, {{match_source_or_target.value}})