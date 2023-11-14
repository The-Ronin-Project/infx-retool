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
</GlobalFunctions>
