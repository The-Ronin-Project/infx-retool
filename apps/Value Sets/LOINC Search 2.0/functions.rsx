<GlobalFunctions>
  <JavascriptQuery
    id="append_code_exclude"
    query={include("./lib/append_code_exclude.js", "string")}
    queryFailureConditions="[]"
    resourceName="JavascriptQuery"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <SqlQueryUnified
    id="final_code_search"
    query={include("./lib/final_code_search.sql", "string")}
    queryThrottleTime="5000"
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="load_loinc_versions"
    importedQueryInputs={{ ordered: [{ terminology: "LOINC" }] }}
    isImported={true}
    playgroundQueryId={37}
    playgroundQueryName="load_versions_of_terminology"
    playgroundQueryUuid="e69988f8-38f5-4d49-a772-16830ebdd669"
    query={include("./lib/load_loinc_versions.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    retoolVersion="2.80.16"
    showLatestVersionUpdatedWarning={true}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="max_position_num"
    importedQueryInputs={{
      ordered: [{ vs_version_uuid: "{{urlparams.vs_version_uuid}}" }],
    }}
    isImported={true}
    playgroundQueryId={35}
    playgroundQueryName="max_position_num"
    playgroundQueryUuid="fa12bc3a-d033-4777-a133-78d8dcca2e7d"
    query={include("./lib/max_position_num.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    retoolVersion="2.80.16"
    showLatestVersionUpdatedWarning={true}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="method_options"
    query={include("./lib/method_options.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="next_rule_group_num"
    importedQueryInputs={{
      ordered: [{ vs_version_uuid: "{{urlparams.vs_version_uuid}}" }],
    }}
    isImported={true}
    playgroundQueryId={34}
    playgroundQueryName="next_rule_group_num"
    playgroundQueryUuid="b32806d2-0167-400c-a735-ad1982c27fdc"
    query={include("./lib/next_rule_group_num.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    retoolVersion="2.80.16"
    runWhenModelUpdates={false}
    runWhenPageLoads={true}
    showLatestVersionUpdatedWarning={true}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="property_options"
    query={include("./lib/property_options.sql", "string")}
    queryTimeout="10001"
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    triggersOnFailure={null}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="save_class_type_rule"
    query={include("./lib/save_class_type_rule.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="save_component_rule"
    query={include("./lib/save_component_rule.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="save_exclude_code"
    query={include("./lib/save_exclude_code.sql", "string")}
    queryDisabled={'{{exclusions_code.value == ""}}'}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="save_exclude_keyword"
    query={include("./lib/save_exclude_keyword.sql", "string")}
    queryDisabled={'{{exclude_keyword.value == ""}}'}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="save_method_rule"
    query={include("./lib/save_method_rule.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="save_order_observation_rule"
    query={include("./lib/save_order_observation_rule.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="save_property_rule"
    query={include("./lib/save_property_rule.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="save_scale_rule"
    query={include("./lib/save_scale_rule.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="save_system_rule"
    query={include("./lib/save_system_rule.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="save_timing_rule"
    query={include("./lib/save_timing_rule.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="scale_options"
    query={include("./lib/scale_options.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <JavascriptQuery
    id="search_component"
    isMultiplayerEdited={false}
    query={include("./lib/search_component.js", "string")}
    queryFailureConditions="[]"
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <RESTQuery
    id="search_component_advanced"
    body={
      '[{"key":"query","value":"{bool: {        must: [          {            simple_query_string: {              fields: {{related_names.value ? [\\"component\\", \\"related_names\\"] : [\\"component\\"]}},              query: {{component_search.value}}            }          }        ],        filter: [          { \\"term\\":  { \\"terminology_version_uuid.keyword\\": {{loinc_version_select.value}} }}        ]      }}"}]'
    }
    bodyType="json"
    enableTransformer={true}
    isMultiplayerEdited={false}
    query="loinc_components/_search?size=500"
    resourceDisplayName="OpenSearch API"
    resourceName="cd5755b4-f1e3-43ed-9532-894ef58a329d"
    resourceTypeOverride=""
    transformer="// Query results are available as the `data` variable
return data.hits.hits.map(hit => hit['_source']);"
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="search_component"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <RESTQuery
    id="search_component_basic"
    body={
      '[{"key":"query","value":"{ bool: {        must: [          {            multi_match: {              type: {{search_type.value == \'Prefix\'? \\"bool_prefix\\": \\"best_fields\\"}}, fields: {{related_names.value ? [\\"component\\", \\"related_names\\"] : [\\"component\\"]}},              query: {{component_search.value}}            }          }        ],        filter: [          { \\"term\\":  { \\"terminology_version_uuid.keyword\\": {{loinc_version_select.value}} }}        ]      }}"}]'
    }
    bodyType="json"
    enableTransformer={true}
    isMultiplayerEdited={false}
    query="loinc_components/_search?size=500"
    resourceDisplayName="OpenSearch API"
    resourceName="cd5755b4-f1e3-43ed-9532-894ef58a329d"
    resourceTypeOverride=""
    transformer="// Query results are available as the `data` variable
return data.hits.hits.map(hit => hit['_source']);"
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="search_component"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <SqlQueryUnified
    id="system_options"
    query={include("./lib/system_options.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="timing_options"
    query={include("./lib/timing_options.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="vs_metadata"
    importedQueryInputs={{
      ordered: [{ vs_version_uuid: "{{urlparams.vs_version_uuid}}" }],
    }}
    isImported={true}
    playgroundQueryId={36}
    playgroundQueryName="vs_metadata"
    playgroundQueryUuid="1fcfc4ad-b997-4832-9678-d01dbc85c214"
    query={include("./lib/vs_metadata.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    retoolVersion="2.80.16"
    showLatestVersionUpdatedWarning={true}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
</GlobalFunctions>
