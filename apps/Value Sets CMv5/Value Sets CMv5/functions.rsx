<GlobalFunctions>
  <RESTQuery
    id="create_use_case_associations"
    body={
      '[{"key":"primary_use_case","value":"{{preparePostData.value.primary_use_case}}"},{"key":"secondary_use_case","value":"{{preparePostData.value.secondary_use_case}}"}]'
    }
    bodyType="json"
    query="ValueSets/{{create_value_set_and_version_one.data.uuid}}/linked_use_cases"
    resourceDisplayName="INFX Internal Tools API"
    resourceName="a00335cd-bd3b-4d98-8af4-7ff590ce95e8"
    runWhenModelUpdates={false}
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
    type="POST"
  />
  <RESTQuery
    id="create_value_set_and_version_one"
    body={
      '[{"key":"name","value":"{{name_input.value}}"},{"key":"title","value":"{{title_input.value.trim()}}"},{"key":"publisher","value":"{{publisher.value}}"},{"key":"contact","value":"{{contact_input.value}}"},{"key":"value_set_description","value":"{{value_set_description.value}}"},{"key":"immutable","value":"false"},{"key":"experimental","value":"{{experimental_checkbox.value}}"},{"key":"purpose","value":"{{purpose_input.value}}"},{"key":"type","value":"{{type_dropdown.value}}"},{"key":"version_description","value":"{{version_description_input.value}}"}]'
    }
    bodyType="json"
    query="ValueSets/"
    resourceDisplayName="INFX Internal Tools API"
    resourceName="a00335cd-bd3b-4d98-8af4-7ff590ce95e8"
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    type="POST"
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="create_use_case_associations"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="run"
      params={{
        ordered: [
          {
            src: "name_input.clearValue\ntitle_input.clearValue\npurpose_input.clearValue\nvalue_set_description.clearValue\nexperimental_checkbox.clearValue\npurpose_input.clearValue\nversion_description_input.clearValuevalue\nprimary_select.clearValue\nsecondary_multiselect.clearValuealue",
          },
        ],
      }}
      pluginId=""
      type="script"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <SqlQueryUnified
    id="delete_synonym"
    query={include("./lib/delete_synonym.sql", "string")}
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
      pluginId="load_synonyms"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <RESTQuery
    id="duplication_api"
    body={
      '[{"key":"name","value":"{{name_input_dup.value}}"},{"key":"title","value":"{{title_input_dup.value}}"},{"key":"contact","value":"{{dup_contact_input.value}}"},{"key":"value_set_description","value":"{{dup_description_input.value}}"},{"key":"purpose","value":"{{dup_purpose_input.value}}"},{"key":"version_description","value":"{{dup_version_description.value}}"}]'
    }
    bodyType="json"
    query="/ValueSets/{{value_set_select.value}}/duplicate"
    resourceDisplayName="INFX Internal Tools API"
    resourceName="a00335cd-bd3b-4d98-8af4-7ff590ce95e8"
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    type="POST"
  >
    <Event
      event="success"
      method="run"
      params={{
        ordered: [
          {
            src: "name_input_dup.clearValue\ntitle_input_dup.clearValue\ndup_contact_input.clearValue\ndup_description_input.clearValue\ndup_purpose_input.clearValue\ndup_daterange.clearValue\ndup_version_description.clearValue",
          },
        ],
      }}
      pluginId=""
      type="script"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="showNotification"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                { notificationType: "success" },
                { title: "Success" },
                { description: "New value set and version created" },
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
  </RESTQuery>
  <RESTQuery
    id="get_associated_use_cases"
    query="/ValueSets/{{vs_metadata_table.selectedRow.data.uuid}}/linked_use_cases"
    resourceDisplayName="INFX Internal Tools API"
    resourceName="a00335cd-bd3b-4d98-8af4-7ff590ce95e8"
    resourceTypeOverride=""
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="processPrimary"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="processUseCases"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <RESTQuery
    id="load_all_use_cases_query"
    query="usecase/"
    resourceDisplayName="INFX Internal Tools API"
    resourceName="a00335cd-bd3b-4d98-8af4-7ff590ce95e8"
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
  />
  <SqlQueryUnified
    id="load_all_value_sets"
    query={include("./lib/load_all_value_sets.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="load_synonyms"
    query={include("./lib/load_synonyms.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="load_value_sets"
    enableTransformer={true}
    query={include("./lib/load_value_sets.sql", "string")}
    queryTimeout="10001"
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    showSuccessConfetti={false}
    transformer=""
    triggersOnFailure={[]}
    triggersOnSuccess={[]}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="load_versions_of_selected_value_set"
    query={include("./lib/load_versions_of_selected_value_set.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="load_vs_metadata"
    query={include("./lib/load_vs_metadata.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="new_synonym"
    query={include("./lib/new_synonym.sql", "string")}
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
      pluginId="load_synonyms"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <Function
    id="preparePostData"
    funcBody={include("./lib/preparePostData.js", "string")}
  />
  <JavascriptQuery
    id="processPrimary"
    query={include("./lib/processPrimary.js", "string")}
    resourceName="JavascriptQuery"
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
  />
  <JavascriptQuery
    id="processUseCases"
    query={include("./lib/processUseCases.js", "string")}
    resourceName="JavascriptQuery"
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
  />
  <SqlQueryUnified
    id="use_case_name"
    query={include("./lib/use_case_name.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
</GlobalFunctions>
