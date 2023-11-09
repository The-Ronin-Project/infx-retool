INSERT INTO data_ingestion.registry(
  resource_type, data_element, tenant_id, value_set_uuid, registry_uuid, type, profile_url)
  VALUES ({{ resource_type_select_vs_insert.value }}, {{data_element_select.value}}, {{tenant_id_vs_insert.value}}, {{value_set_select.value}}, uuid_generate_v4(), 'value_set', {{profile_url_select.value}})