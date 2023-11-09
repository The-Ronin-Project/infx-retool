INSERT INTO data_ingestion.registry(
  resource_type, data_element, tenant_id, concept_map_uuid, source_extension_url, registry_uuid, type)
  VALUES ({{ resource_type_select.value }}, {{data_element_input.value}}, {{tenant_id_select.value}}, {{concept_map_select.selectedItem.concept_map_uuid}}, {{source_extension_select.value}}, uuid_generate_v4(), 'concept_map')