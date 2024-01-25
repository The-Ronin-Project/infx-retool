<GlobalFunctions>
  <RESTQuery
    id="clear_and_leave_blank_query"
    bodyType="json"
    query="ValueSets/clear/linked_use_cases?value_set_uuid={{urlparams.uuid}}"
    resourceDisplayName="INFX Internal Tools API"
    resourceName="a00335cd-bd3b-4d98-8af4-7ff590ce95e8"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    type="DELETE"
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="get_associated_use_cases"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <JavascriptQuery
    id="clear_assign_use_case"
    query={include("./lib/clear_assign_use_case.js", "string")}
    queryFailureConditions="[]"
    resourceName="JavascriptQuery"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <RESTQuery
    id="get_associated_use_cases"
    query="/ValueSets/{{urlparams.uuid}}/linked_use_cases"
    resourceDisplayName="INFX Internal Tools API"
    resourceName="a00335cd-bd3b-4d98-8af4-7ff590ce95e8"
    resourceTypeOverride=""
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="processUseCases"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="processPrimary"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <SqlQueryUnified
    id="get_most_recent_version"
    query={include("./lib/get_most_recent_version.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    showSuccessConfetti={false}
    showUpdateSetValueDynamicallyToggle={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    triggersOnFailure={[]}
    triggersOnSuccess={[]}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="get_statuses"
    query={include("./lib/get_statuses.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <RESTQuery
    id="load_all_use_cases_query"
    query="usecase/"
    resourceDisplayName="INFX Internal Tools API"
    resourceName="a00335cd-bd3b-4d98-8af4-7ff590ce95e8"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <SqlQueryUnified
    id="load_vs_metadata"
    query={include("./lib/load_vs_metadata.sql", "string")}
    queryTimeout="10001"
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    showSuccessConfetti={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    triggersOnFailure={[]}
    triggersOnSuccess={["value_set_versions"]}
    warningCodes={[]}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="value_set_versions"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="new_value_set_version"
    actionType="INSERT"
    changeset={
      '[{"key":"value_set_uuid","value":"{{urlparams.uuid}}"},{"key":"effective_start","value":"{{effective_dates.startValue}}"},{"key":"effective_end","value":"{{effective_dates.endValue}}"},{"key":"description","value":"{{textinput2.value}}"},{"key":"version","value":"{{textinput3.value}}"},{"key":"uuid","value":"{{textInput4.value}}"},{"key":"status","value":"{{dropdown1.value}}"}]'
    }
    query={include("./lib/new_value_set_version.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    runWhenModelUpdates={false}
    showSuccessConfetti={false}
    showUpdateSetValueDynamicallyToggle={false}
    tableName="value_sets.value_set_version"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    triggersOnFailure={[]}
    triggersOnSuccess={[
      "populate_new_version_intensional",
      "value_set_versions",
    ]}
    updateSetValueDynamically={true}
    warningCodes={[]}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="populate_new_version_intensional"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="value_set_versions"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="selectTab"
      params={{ ordered: [{ selectedTab: "0" }] }}
      pluginId="tabbedcontainer1"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <RESTQuery
    id="overwrite_associations_query"
    body={
      '[{"key":"primary_use_case","value":"{{preparePostData.value.primary_use_case}}"},{"key":"secondary_use_case","value":"{{preparePostData.value.secondary_use_case}}"}]'
    }
    bodyType="json"
    query="ValueSets/{{urlparams.uuid}}/linked_use_cases"
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
      pluginId="get_associated_use_cases"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="confetti"
      params={{ ordered: [] }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <SqlQueryUnified
    id="populate_new_version_intensional"
    query={include("./lib/populate_new_version_intensional.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    runWhenModelUpdates={false}
    showSuccessConfetti={false}
    showUpdateSetValueDynamicallyToggle={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    triggersOnFailure={[]}
    triggersOnSuccess={[]}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <Function
    id="prepareCurrentPrimary"
    funcBody={include("./lib/prepareCurrentPrimary.js", "string")}
  />
  <Function
    id="prepareCurrentSecondary"
    funcBody={include("./lib/prepareCurrentSecondary.js", "string")}
  />
  <Function
    id="preparePostData"
    funcBody={include("./lib/preparePostData.js", "string")}
  />
  <JavascriptQuery
    id="processPrimary"
    query={include("./lib/processPrimary.js", "string")}
    resourceName="JavascriptQuery"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <JavascriptQuery
    id="processUseCases"
    query={include("./lib/processUseCases.js", "string")}
    resourceName="JavascriptQuery"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <SqlQueryUnified
    id="save_description_edit"
    query={include("./lib/save_description_edit.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    resourceTypeOverride=""
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
      pluginId="load_vs_metadata"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="save_name_edit"
    query={include("./lib/save_name_edit.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    resourceTypeOverride=""
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
      pluginId="load_vs_metadata"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="save_publisher_edit"
    query={include("./lib/save_publisher_edit.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    resourceTypeOverride=""
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
      pluginId="load_vs_metadata"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="save_purpose_edit"
    query={include("./lib/save_purpose_edit.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    resourceTypeOverride=""
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
      pluginId="load_vs_metadata"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="save_title_edit"
    query={include("./lib/save_title_edit.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    resourceTypeOverride=""
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
      pluginId="load_vs_metadata"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="set_use_case"
    actionType="UPDATE_BY"
    changeset={'[{"key":"use_case_uuid","value":"{{select_use_case.value}}"}]'}
    editorMode="gui"
    filterBy={'[{"key":"uuid","value":"{{urlparams.uuid}}","operation":"="}]'}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    runWhenModelUpdates={false}
    tableName="value_sets.value_set"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="clear_assign_use_case"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="tableBulkUpdateQuery"
    actionType="BULK_UPDATE_BY_KEY"
    bulkUpdatePrimaryKey="uuid"
    query={include("./lib/tableBulkUpdateQuery.sql", "string")}
    records="{{table1.recordUpdates}}"
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    runWhenModelUpdates={false}
    showSuccessConfetti={false}
    showUpdateSetValueDynamicallyToggle={false}
    tableName="value_sets.value_set_version"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    triggersOnFailure={[]}
    triggersOnSuccess={["value_set_versions", "load_vs_metadata"]}
    updateSetValueDynamically={true}
    warningCodes={[]}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="value_set_versions"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="load_vs_metadata"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="use_case_dropdown"
    query={include("./lib/use_case_dropdown.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="value_set_versions"
    query={include("./lib/value_set_versions.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    showSuccessConfetti={false}
    showUpdateSetValueDynamicallyToggle={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    triggersOnFailure={[]}
    triggersOnSuccess={[]}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
</GlobalFunctions>
