insert into resource_synonyms
(uuid, resource_uuid, context, synonym)
VALUES
({{uuid.v1()}}, {{concept_map_metadata_table.selectedRow.data.uuid}}, {{synonym_context_input.value}}, {{synonym_synonym_input.value}})