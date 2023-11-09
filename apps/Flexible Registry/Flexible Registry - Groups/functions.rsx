<GlobalFunctions>
  <RESTQuery
    id="add_group"
    body={
      '[{"key":"title","value":"{{group_title_input.value}}"},{"key":"minimum_panel_members","value":"{{minimum_panel_members_input.value}}"}]'
    }
    bodyType="json"
    query="registries/{{urlparams.registry_uuid}}/groups/"
    resourceDisplayName="INFX Internal Tools API"
    resourceName="a00335cd-bd3b-4d98-8af4-7ff590ce95e8"
    runWhenModelUpdates={false}
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
    type="POST"
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="get_groups"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <RESTQuery
    id="delete_group"
    bodyType="json"
    confirmationMessage="Are you sure you want to delete this group?"
    query="registries/{{urlparams.registry_uuid}}/groups/{{group_table.selectedRow.uuid}}"
    requireConfirmation={true}
    resourceDisplayName="INFX Internal Tools API"
    resourceName="a00335cd-bd3b-4d98-8af4-7ff590ce95e8"
    runWhenModelUpdates={false}
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
    type="DELETE"
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="get_groups"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <RESTQuery
    id="get_groups"
    headers={'[{"key":"","value":""},{"key":"","value":""}]'}
    query="registries/{{urlparams.registry_uuid}}/groups/"
    resourceDisplayName="INFX Internal Tools API"
    resourceName="a00335cd-bd3b-4d98-8af4-7ff590ce95e8"
    resourceTypeOverride=""
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
  />
  <RESTQuery
    id="get_registry_metadata"
    query="registries/{{urlparams.registry_uuid}}"
    resourceDisplayName="INFX Internal Tools API"
    resourceName="a00335cd-bd3b-4d98-8af4-7ff590ce95e8"
    resourceTypeOverride=""
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
  />
  <RESTQuery
    id="move_group_down"
    bodyType="json"
    query="registries/{{urlparams.registry_uuid}}/groups/{{group_table.selectedRow.uuid}}/actions/reorder/next"
    resourceDisplayName="INFX Internal Tools API"
    resourceName="a00335cd-bd3b-4d98-8af4-7ff590ce95e8"
    runWhenModelUpdates={false}
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
    type="POST"
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="get_groups"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <RESTQuery
    id="move_group_up"
    bodyType="json"
    query="registries/{{urlparams.registry_uuid}}/groups/{{group_table.selectedRow.uuid}}/actions/reorder/previous"
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
      pluginId="get_groups"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
</GlobalFunctions>
