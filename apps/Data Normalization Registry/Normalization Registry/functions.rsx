<GlobalFunctions>
  <SqlQueryUnified
    id="concept_maps"
    query={include("./lib/concept_maps.sql", "string")}
    queryTimeout="10001"
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="delete_registry_entry"
    confirmationMessage="## Are you sure you want to delete this registry entry?

resource type: {{registry_table.selectedRow.data.resource_type}}

data element: {{registry_table.selectedRow.data.data_element}}

tenant id: {{registry_table.selectedRow.data.tenant_id}}

profile url: {{registry_table.selectedRow.data.profile_url}}"
    query={include("./lib/delete_registry_entry.sql", "string")}
    requireConfirmation={true}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="view_all_registry"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="extension_url"
    query={include("./lib/extension_url.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer=""
    warningCodes={[]}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="split_url"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="filter_data_element_select"
    query={include("./lib/filter_data_element_select.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="filter_resource_select"
    query={include("./lib/filter_resource_select.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="filter_tenant_select"
    query={include("./lib/filter_tenant_select.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <RESTQuery
    id="get_datetime"
    enableTransformer={true}
    query="data_normalization/registry/actions/get_time"
    resourceDisplayName="INFX Internal Tools API"
    resourceName="a00335cd-bd3b-4d98-8af4-7ff590ce95e8"
    transformer="let date = data.last_modified.slice(0, -4)
let update_date = (new Date(date)).toLocaleString();
return update_date"
  />
  <RESTQuery
    id="get_resource_types"
    enableTransformer={true}
    headers={
      '[{"key":"Authorization","value":"Bearer {{get_simplifier_token.data.token}}"},{"key":"Accept","value":"application/fhir+json"},{"key":"Content-Type","value":"application/fhir+json"}]'
    }
    query="StructureDefinition?_count=500"
    resourceDisplayName="FHIRRoninCommonModel"
    resourceName="3613b0ef-8f05-48f6-9c3c-d5a8bd47c43c"
    resourceTypeOverride=""
    transformer="function getOrderedSet(set) {
  const orderedArray = Array.from(set);
  orderedArray.sort();
  return orderedArray;
}

let resourceTypes = [];
for (let [key, value] of Object.entries(data)) {
  if (key === 'entry') {
    let resources = value;
    for (let i = 0; i < resources.length; i++) {
      if (resources[i].resource && resources[i].resource.type !== null) {
        resourceTypes.push(resources[i].resource.type);
      }
    }
  }
}
const resourceTypesSet = new Set(resourceTypes);
const orderedResourceTypes = getOrderedSet(resourceTypesSet);
return orderedResourceTypes;"
  />
  <RESTQuery
    id="get_simplifier_token"
    body={
      '[{"key":"Email","value":"\\"retooluser@projectronin.com\\""},{"key":"Password","value":"\\"projectronin2022\\""}]'
    }
    bodyType="json"
    query="https://api.simplifier.net/token"
    resourceName="REST-WithoutResource"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    runWhenPageLoads={true}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    type="POST"
  />
  <RESTQuery
    id="get_urls"
    enableTransformer={true}
    headers={
      '[{"key":"Authorization","value":"Bearer {{get_simplifier_token.data.token}}"},{"key":"Accept","value":"application/fhir+json"},{"key":"Content-Type","value":"application/fhir+json"}]'
    }
    query="StructureDefinition?_count=500"
    resourceDisplayName="FHIRRoninCommonModel"
    resourceName="3613b0ef-8f05-48f6-9c3c-d5a8bd47c43c"
    transformer={
      'function getOrderedSet(set) {\n  const orderedArray = Array.from(set);\n  orderedArray.sort();\n  return orderedArray;\n}\n\nvar urls = data.entry\n  .filter(entry => entry.resource.status === "active")\n  .map(entry => entry.resource.url);\n\nconst urlSet = new Set(urls);\nconst orderedURLs = getOrderedSet(urlSet);\n\n// Split the URLs into extensions and profiles\nconst extensionURLs = orderedURLs.filter(url => url && url.includes("Extension"));\nconst profileURLs = orderedURLs.filter(url => url && !url.includes("Extension"));\n\nreturn {extensionURLs, profileURLs};\n'
    }
  />
  <SqlQueryUnified
    id="insert_concept_map_to_registry"
    query={include("./lib/insert_concept_map_to_registry.sql", "string")}
    queryFailureConditions={'[{"condition":"","message":""}]'}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  >
    <Event
      event="success"
      method="confetti"
      params={{ ordered: [] }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="clear"
      params={{ ordered: [] }}
      pluginId="add_form"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="failure"
      method="showNotification"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                { notificationType: "error" },
                {
                  description:
                    "{{insert_concept_map_to_registry.data.message}}",
                },
                { title: "Failure:" },
              ],
            },
          },
        ],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="insert_value_set_to_registry"
    query={include("./lib/insert_value_set_to_registry.sql", "string")}
    queryFailureConditions={'[{"condition":"","message":""}]'}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  >
    <Event
      event="success"
      method="confetti"
      params={{ ordered: [] }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="clear"
      params={{ ordered: [] }}
      pluginId="add_form2"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="failure"
      method="showNotification"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                { notificationType: "error" },
                {
                  description:
                    "{{insert_concept_map_to_registry.data.message}}",
                },
                { title: "Failure:" },
              ],
            },
          },
        ],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <RESTQuery
    id="publish_registry"
    bodyType="json"
    confirmationMessage="PUBLISH REGISTRY:  Are you sure you want to update/publish the registry?"
    query="data_normalization/registry/actions/publish"
    requireConfirmation={true}
    resourceDisplayName="INFX Internal Tools API"
    resourceName="a00335cd-bd3b-4d98-8af4-7ff590ce95e8"
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    type="POST"
  />
  <JavascriptQuery
    id="split_url"
    query={include("./lib/split_url.js", "string")}
    queryFailureConditions="[]"
    resourceName="JavascriptQuery"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <JavascriptQuery
    id="tab_trigger_query"
    query={include("./lib/tab_trigger_query.js", "string")}
    queryFailureConditions="[]"
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <SqlQueryUnified
    id="value_sets"
    query={include("./lib/value_sets.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="view_all_registry"
    query={include("./lib/view_all_registry.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
</GlobalFunctions>
