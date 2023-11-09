<GlobalFunctions>
  <RESTQuery
    id="create_new_registry"
    body={
      '[{"key":"title","value":"{{title_input.value}}"},{"key":"registry_type","value":"{{registry_type_input.value}}"},{"key":"sorting_enabled","value":"{{sorting_enabled_boolean.value}}"}]'
    }
    bodyType="json"
    query="registries/"
    resourceDisplayName="INFX Internal Tools API"
    resourceName="a00335cd-bd3b-4d98-8af4-7ff590ce95e8"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
    type="POST"
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="get_registries"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="close"
      params={{ ordered: [] }}
      pluginId="create_new_registry_modal"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="clearValue"
      params={{ ordered: [] }}
      pluginId="title_input"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="clearValue"
      params={{ ordered: [] }}
      pluginId="registry_type_input"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="clearValue"
      params={{ ordered: [] }}
      pluginId="sorting_enabled_boolean"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <RESTQuery
    id="edit_metadata"
    body={
      '[{"key":"registry_type","value":"{{registry_type.value}}"},{"key":"title","value":"{{title.value}}"},{"key":"sorting_enabled","value":"{{sorting_enabled.value}}"}]'
    }
    bodyType="json"
    query="registries/{{registries.selectedRow.uuid}}"
    resourceDisplayName="INFX Internal Tools API"
    resourceName="a00335cd-bd3b-4d98-8af4-7ff590ce95e8"
    runWhenModelUpdates={false}
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
    type="PATCH"
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="get_registries"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="close"
      params={{ ordered: [] }}
      pluginId="edit_registry_metadata"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <RESTQuery
    id="get_registries"
    query="registries/"
    resourceDisplayName="INFX Internal Tools API"
    resourceName="a00335cd-bd3b-4d98-8af4-7ff590ce95e8"
    resourceTypeOverride=""
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
  />
</GlobalFunctions>
