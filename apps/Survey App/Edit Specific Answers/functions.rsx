<GlobalFunctions>
  <SqlQueryUnified
    id="delete_sa"
    confirmationMessage={
      'Delete specific answer "{{sa_list.selectedRow.data.specific_answer_label}}"?'
    }
    query={include("./lib/delete_sa.sql", "string")}
    requireConfirmation={true}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    runWhenModelUpdates={false}
    showSuccessConfetti={false}
    showUpdateSetValueDynamicallyToggle={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    triggersOnFailure={[]}
    triggersOnSuccess={["load_sa"]}
    updateSetValueDynamically={true}
    warningCodes={[]}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="load_sa"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="form1_insert_into_surveys.specific_answer"
    actionType="INSERT"
    changeset={
      '[{"key":"specific_answer_label","value":"{{textinput1.value}}"},{"key":"generic_answer_display","value":"{{textinput2.value}}"},{"key":"clinical_severity_order","value":"{{textinput3.value}}"},{"key":"","value":"{{textinput4.value}}"},{"key":"alert_tier","value":"{{textinput5.value}}"},{"key":"specific_answer_uuid","value":"{{uuid.v1()}}"}]'
    }
    editorMode="gui"
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    runWhenModelUpdates={false}
    showSuccessConfetti={false}
    showUpdateSetValueDynamicallyToggle={false}
    tableName="surveys.specific_answer"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    triggersOnFailure={[]}
    triggersOnSuccess={["load_sa"]}
    updateSetValueDynamically={true}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="load_sa"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="load_sa"
    query={include("./lib/load_sa.sql", "string")}
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
</GlobalFunctions>
