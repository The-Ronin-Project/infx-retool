<GlobalFunctions>
  <RESTQuery
    id="bulk_insert_code"
    body="{{jsonEditor1.value}}"
    bodyType="raw"
    headers={'[{"key":"Content-Type","value":"application/json"}]'}
    query="terminology/new_code"
    resourceDisplayName="INFX Internal Tools API"
    resourceName="a00335cd-bd3b-4d98-8af4-7ff590ce95e8"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    type="POST"
  />
  <RESTQuery
    id="insert_new_code"
    body={
      '[{"key":"code","value":"{{code.value}}"},{"key":"display","value":"{{display.value}}"},{"key":"terminology_version_uuid","value":"{{urlparams.uuid}}"},{"key":"additional_data","value":"{{additional_data.value}}"},{"key":"code_schema","value":"{{select_code_schema.value}}"}]'
    }
    bodyType="json"
    query="terminology/new_code"
    resourceDisplayName="INFX Internal Tools API"
    resourceName="a00335cd-bd3b-4d98-8af4-7ff590ce95e8"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    type="POST"
  />
  <RESTQuery
    id="upload_row"
    body={
      '[{"key":"code","value":"{{ table1.selectedRow.data.code }}"},{"key":"display","value":"{{table1.selectedRow.data.display}}"},{"key":"system","value":""},{"key":"version","value":""},{"key":"additional_data","value":""}]'
    }
    bodyType="json"
    resourceName="REST-WithoutResource"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    type="POST"
  />
  <SqlQueryUnified
    id="view_terminology"
    query={include("./lib/view_terminology.sql", "string")}
    queryTimeout="10001"
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="has_code_jsonb"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="has_code_simple"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="terminology_metadata"
    query={include("./lib/terminology_metadata.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    warningCodes={[]}
  />
  <RESTQuery
    id="insert_new_codeable_concept"
    body={
      '[{"key":"code_schema","value":"{{select_code_schema.value}}"},{"key":"code_object","value":"{{codeable_concept_editor.value}}"},{"key":"additional_data","value":"{{additional_data.value}}"},{"key":"terminology_version_uuid","value":"{{urlparams.uuid}}"}]'
    }
    bodyType="json"
    isMultiplayerEdited={false}
    query="terminology/new_code"
    resourceDisplayName="INFX Internal Tools API"
    resourceName="a00335cd-bd3b-4d98-8af4-7ff590ce95e8"
    runWhenModelUpdates={false}
    type="POST"
  />
  <JavascriptQuery
    id="has_code_simple"
    query={include("./lib/has_code_simple.js", "string")}
    resourceName="JavascriptQuery"
  />
  <JavascriptQuery
    id="has_code_jsonb"
    query={include("./lib/has_code_jsonb.js", "string")}
    resourceName="JavascriptQuery"
  />
</GlobalFunctions>
