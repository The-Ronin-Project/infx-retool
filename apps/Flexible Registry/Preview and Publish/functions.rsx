<GlobalFunctions>
  <RESTQuery
    id="get_registry_metadata"
    query="registries/{{urlparams.registry_uuid}}"
    resourceDisplayName="INFX Internal Tools API"
    resourceName="a00335cd-bd3b-4d98-8af4-7ff590ce95e8"
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
  />
  <RESTQuery
    id="get_registry_preview"
    query="registries/{{urlparams.registry_uuid}}/pending"
    resourceDisplayName="INFX Internal Tools API"
    resourceName="a00335cd-bd3b-4d98-8af4-7ff590ce95e8"
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
  />
  <RESTQuery
    id="publish_registry_all_environments"
    bodyType="json"
    query="registries/{{urlparams.registry_uuid}}/dev,stage,prod"
    resourceDisplayName="INFX Internal Tools API"
    resourceName="a00335cd-bd3b-4d98-8af4-7ff590ce95e8"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
    type="POST"
  />
  <RESTQuery
    id="publish_registry_dev_only"
    bodyType="json"
    query="registries/{{urlparams.registry_uuid}}/dev"
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
      pluginId="publish_registry_stage_only"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <RESTQuery
    id="publish_registry_prod_only"
    bodyType="json"
    query="registries/{{urlparams.registry_uuid}}/prod"
    resourceDisplayName="INFX Internal Tools API"
    resourceName="a00335cd-bd3b-4d98-8af4-7ff590ce95e8"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
    type="POST"
  />
  <RESTQuery
    id="publish_registry_stage_only"
    bodyType="json"
    query="registries/{{urlparams.registry_uuid}}/stage"
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
      pluginId="publish_registry_prod_only"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
</GlobalFunctions>
