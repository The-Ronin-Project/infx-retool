<GlobalFunctions>
  <Folder id="concept_maps_queries">
    <SqlQueryUnified
      id="load_concept_maps"
      query={include("./lib/load_concept_maps.sql", "string")}
      resourceDisplayName="Clinical Content PostgresSQL DB"
      resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
    />
  </Folder>
  <SqlQueryUnified
    id="assign_update"
    actionType="UPDATE_OR_INSERT_BY"
    changeset={
      '[{"key":"assigned_to","value":"{{primary_assignee.value}}"},{"key":"assignment_back_up","value":"{{backup_asignee.value}}"},{"key":"due_date","value":"{{due_date.value}}"},{"key":"value_set_version_uuid","value":"{{assignment_que.selectedRow.data.uuid}}"},{"key":"reviewer","value":"{{reviewer.value}}"}]'
    }
    editorMode="gui"
    filterBy={
      '[{"key":"value_set_version_uuid","value":"{{assignment_que.selectedRow.data.uuid}}","operation":"="}]'
    }
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    runWhenModelUpdates={false}
    tableName="project_management.value_set_assignment"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="value_set_status"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="assignee_search"
    query={include("./lib/assignee_search.sql", "string")}
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
    id="assignment_backup_count"
    query={include("./lib/assignment_backup_count.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="assignment_primary_count"
    query={include("./lib/assignment_primary_count.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="assignment_table"
    query={include("./lib/assignment_table.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="current_user_match"
    query={include("./lib/current_user_match.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="default_current_user"
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
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
  >
    <Event
      enabled="{{primary_checkbox.value}}"
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId=""
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="reviewer_table_count"
    query={include("./lib/reviewer_table_count.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="user_query"
    query={include("./lib/user_query.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="value_set_status"
    actionType="UPDATE_BY"
    changeset={'[{"key":"status","value":"in progress"}]'}
    editorMode="gui"
    filterBy={
      '[{"key":"uuid","value":"{{assignment_que.selectedRow.data.uuid}}","operation":"="}]'
    }
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    runWhenModelUpdates={false}
    tableName="value_sets.value_set_version"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
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
    id="view_active_vs"
    query={include("./lib/view_active_vs.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
</GlobalFunctions>
