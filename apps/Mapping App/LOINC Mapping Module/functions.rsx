<GlobalFunctions>
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
    id="map"
    query={include("./lib/map.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    runWhenModelUpdates={false}
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
    query={include("./lib/search_component.js", "string")}
    queryFailureConditions="[]"
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <ElasticSearchQuery
    id="search_component_advanced"
    enableTransformer={true}
    query={include("./lib/search_component_advanced.json5", "string")}
    resourceDisplayName="ElasticSearch"
    resourceName="3e68115b-9776-4956-86b4-f468d2d1f836"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data.hits.hits.map(hit => hit['_source'].component)"
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
  </ElasticSearchQuery>
  <ElasticSearchQuery
    id="search_component_basic"
    enableTransformer={true}
    query={include("./lib/search_component_basic.json5", "string")}
    resourceDisplayName="ElasticSearch"
    resourceName="3e68115b-9776-4956-86b4-f468d2d1f836"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data.hits.hits.map(hit => hit['_source'].component)"
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
  </ElasticSearchQuery>
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
