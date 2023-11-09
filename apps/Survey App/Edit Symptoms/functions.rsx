<GlobalFunctions>
  <SqlQueryUnified
    id="delete_symptom"
    confirmationMessage={
      'Delete symptom "{{symptom_list.selectedRow.data.provider_label}}"?'
    }
    query={include("./lib/delete_symptom.sql", "string")}
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
    triggersOnSuccess={["load_symptoms"]}
    updateSetValueDynamically={true}
    warningCodes={[]}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="load_symptoms"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="form1_insert_into_surveys.symptom"
    actionType="INSERT"
    changeset={
      '[{"key":"symptom_uuid","value":"{{textinput5.value}}"},{"key":"symptom_id","value":"https://projectronin.io/data-graph/Symptoms#SYMPTOM-{{textinput3.value.replaceAll(\' \',\'_\')}}"},{"key":"provider_label","value":"{{textinput3.value}}"},{"key":"patient_label","value":"{{textinput4.value}}"},{"key":"last_modified_date","value":"now()"},{"key":"last_modified_user","value":"{{current_user.fullName}}"},{"key":"qol_symptom","value":"{{checkbox1.value}}"}]'
    }
    editorMode="gui"
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    runWhenModelUpdates={false}
    showSuccessConfetti={false}
    showUpdateSetValueDynamicallyToggle={false}
    tableName="surveys.symptom"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    triggersOnFailure={[]}
    triggersOnSuccess={["load_symptoms", "index_symptom", "reset_symptom_form"]}
    updateSetValueDynamically={true}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="load_symptoms"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="index_symptom"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="reset_symptom_form"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <ElasticSearchQuery
    id="index_symptom"
    method="create"
    query={include("./lib/index_symptom.json5", "string")}
    resourceDisplayName="ElasticSearch"
    resourceName="3e68115b-9776-4956-86b4-f468d2d1f836"
    runWhenModelUpdates={false}
    showSuccessConfetti={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    triggersOnFailure={[]}
    triggersOnSuccess={[]}
  />
  <SqlQueryUnified
    id="load_symptoms"
    query={include("./lib/load_symptoms.sql", "string")}
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
  <JavascriptQuery
    id="reset_symptom_form"
    query={include("./lib/reset_symptom_form.js", "string")}
    queryFailureConditions="[]"
    resourceName="JavascriptQuery"
    showSuccessConfetti={false}
    showUpdateSetValueDynamicallyToggle={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    triggersOnFailure={[]}
    triggersOnSuccess={[]}
    updateSetValueDynamically={true}
  />
</GlobalFunctions>
