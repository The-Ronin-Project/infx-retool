insert into value_sets.value_set 
(title, name, purpose, experimental, type, immutable, contact, uuid, publisher, description)
VALUES
({{title_input_dup.value}}, {{name_input_dup.value}}, {{purpose_input.value}}, {{experimental_input.value}}, 'intensional', false, {{contact_input.value}}, {{new_concept_map_uuid.value}}, 'Project Ronin', {{description_input.value}})