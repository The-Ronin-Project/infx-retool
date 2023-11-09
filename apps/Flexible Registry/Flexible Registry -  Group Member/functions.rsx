<GlobalFunctions>
  <RESTQuery
    id="add_group_member"
    body={
      '[{"key":"value_set_uuid","value":"{{value_set_select.selectedItem.uuid}}"},{"key":"title","value":"{{product_label_input.value}}"},{"key":"ref_range_high","value":"{{transformerRefHigh.value}}"},{"key":"ref_range_low","value":"{{transformerRefHigh.value}}"},{"key":"ucum_ref_units","value":"{{transformerUCUM.value}}"}]'
    }
    bodyType="json"
    cookies={'[{"key":"","value":""},{"key":"","value":""}]'}
    headers={'[{"key":"","value":""},{"key":"","value":""}]'}
    query="registries/{{urlparams.registry_uuid}}/groups/{{urlparams.group_uuid}}/members/"
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
      pluginId="get_group_members"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="clearValue"
      params={{ ordered: [] }}
      pluginId="value_set_select"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="clearValue"
      params={{ ordered: [] }}
      pluginId="product_label_input"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <RESTQuery
    id="delete_group_member"
    bodyType="json"
    confirmationMessage="Are you sure you want to delete this group member?"
    query="registries/{{urlparams.registry_uuid}}/groups/{{urlparams.group_uuid}}/members/{{group_member_table.selectedRow.uuid}}"
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
      pluginId="get_group_members"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <RESTQuery
    id="edit_group_member"
    body={
      '[{"key":"title","value":"{{title_input.value}}"},{"key":"ref_range_high","value":"{{transformerRefHighEdit.value}}"},{"key":"ref_range_low","value":"{{transformerRefLowEdit.value}}"},{"key":"ucum_ref_units","value":"{{transformerUCUMEdit.value}}"}]'
    }
    bodyType="json"
    query="registries/{{urlparams.registry_uuid}}/groups/{{urlparams.group_uuid}}/members/{{group_member_table.selectedRow.uuid}}"
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
      pluginId="get_group_members"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="close"
      params={{ ordered: [] }}
      pluginId="edit_group_member_modal"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <RESTQuery
    id="edit_group_title"
    body={
      '[{"key":"title","value":"{{group_title_input.value}}"},{"key":"ref_range_high","value":"{{ref_high_input}}"},{"key":"ref_range_low","value":"{{ref_low_input.value}}"},{"key":"ucum_ref_units","value":"{{ucum_ref_units_input2.value}}"}]'
    }
    bodyType="json"
    query="/registries/{{urlparams.registry_uuid}}/groups/{{urlparams.group_uuid}}"
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
      pluginId="get_group"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <RESTQuery
    id="edit_minimum_panel_members"
    body={
      '[{"key":"minimum_panel_members","value":"{{minimum_panel_members.value}}"}]'
    }
    bodyType="json"
    query="/registries/{{urlparams.registry_uuid}}/groups/{{urlparams.group_uuid}}"
    resourceDisplayName="INFX Internal Tools API"
    resourceName="a00335cd-bd3b-4d98-8af4-7ff590ce95e8"
    runWhenModelUpdates={false}
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
    type="PATCH"
  />
  <RESTQuery
    id="get_group"
    query="registries/{{urlparams.registry_uuid}}/groups/{{urlparams.group_uuid}}"
    resourceDisplayName="INFX Internal Tools API"
    resourceName="a00335cd-bd3b-4d98-8af4-7ff590ce95e8"
    resourceTypeOverride=""
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
  />
  <RESTQuery
    id="get_group_members"
    query="registries/{{urlparams.registry_uuid}}/groups/{{urlparams.group_uuid}}/members/"
    resourceDisplayName="INFX Internal Tools API"
    resourceName="a00335cd-bd3b-4d98-8af4-7ff590ce95e8"
    resourceTypeOverride=""
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
  />
  <RESTQuery
    id="move_group_member_down"
    bodyType="json"
    query="registries/{{urlparams.registry_uuid}}/groups/{{urlparams.group_uuid}}/members/{{group_member_table.selectedRow.uuid}}/actions/reorder/next"
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
      pluginId="get_group_members"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="get_group_members"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <RESTQuery
    id="move_group_member_up"
    bodyType="json"
    query="registries/{{urlparams.registry_uuid}}/groups/{{urlparams.group_uuid}}/members/{{group_member_table.selectedRow.uuid}}/actions/reorder/previous"
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
      pluginId="get_group_members"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <RESTQuery
    id="registry_metadata"
    query="registries/{{urlparams.registry_uuid}}"
    resourceDisplayName="INFX Internal Tools API"
    resourceName="a00335cd-bd3b-4d98-8af4-7ff590ce95e8"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    runWhenPageLoads={true}
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
  />
  <Function
    id="transformerRefHigh"
    funcBody={include("./lib/transformerRefHigh.js", "string")}
  />
  <Function
    id="transformerRefHighEdit"
    funcBody={include("./lib/transformerRefHighEdit.js", "string")}
  />
  <Function
    id="transformerRefLow"
    funcBody={include("./lib/transformerRefLow.js", "string")}
  />
  <Function
    id="transformerRefLowEdit"
    funcBody={include("./lib/transformerRefLowEdit.js", "string")}
  />
  <Function
    id="transformerUCUM"
    funcBody={include("./lib/transformerUCUM.js", "string")}
  />
  <Function
    id="transformerUCUMEdit"
    funcBody={include("./lib/transformerUCUMEdit.js", "string")}
  />
  <RESTQuery
    id="value_set_query"
    query="https:hashi.prod.projectronin.io/ValueSets/"
    resourceName="REST-WithoutResource"
    resourceTypeOverride=""
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
  />
</GlobalFunctions>
