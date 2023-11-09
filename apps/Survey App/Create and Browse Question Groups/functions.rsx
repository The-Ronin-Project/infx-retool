<GlobalFunctions>
  <SqlQueryUnified
    id="delete_question_group"
    allowedGroups={["Clinical Intelligence Admin", "admin"]}
    confirmationMessage="## Are you sure you want to delete the question group {{table1.selectedRow.data.title}}?"
    query={include("./lib/delete_question_group.sql", "string")}
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
      pluginId="load_question_groups"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="load_question_groups"
    query={include("./lib/load_question_groups.sql", "string")}
    queryTimeout="10001"
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    showSuccessConfetti={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    triggersOnFailure={[]}
    triggersOnSuccess={[]}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="load_symptoms"
    query={include("./lib/load_symptoms.sql", "string")}
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
    id="new_question_group"
    actionType="INSERT"
    changeset={
      '[{"key":"uuid","value":"{{uuid.v1()}}"},{"key":"symptom_uuid","value":"{{symptom_dropdown.value}}"},{"key":"title","value":"{{title_input.value}}"},{"key":"description","value":"{{description_input.value}}"},{"key":"status","value":"active"}]'
    }
    editorMode="gui"
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    runWhenModelUpdates={false}
    showSuccessConfetti={false}
    showUpdateSetValueDynamicallyToggle={false}
    tableName="surveys.question_group"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    triggersOnFailure={[]}
    triggersOnSuccess={["load_question_groups"]}
    updateSetValueDynamically={true}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="load_question_groups"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
</GlobalFunctions>
