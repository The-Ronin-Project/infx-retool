<GlobalFunctions>
  <SqlQueryUnified
    id="add_explicit_inclusion"
    query={include("./lib/add_explicit_inclusion.sql", "string")}
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
      pluginId="load_explicit_inclusions"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="add_rule"
    actionType="INSERT"
    changeset={
      '[{"key":"value_set_version","value":"{{urlparams.uuid}}"},{"key":"uuid","value":"{{uuid.v1()}}"},{"key":"property","value":"{{dropdown2.value}}"},{"key":"value","value":"{{textinput2.value}}"},{"key":"description","value":"{{textinput1.value}}"},{"key":"include","value":"{{type_select.value}}"},{"key":"terminology_version","value":"{{version_select.value}}"},{"key":"operator","value":"{{dropdown3.value}}"},{"key":"rule_group","value":"1"}]'
    }
    editorMode="gui"
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    runWhenModelUpdates={false}
    showSuccessConfetti={false}
    showUpdateSetValueDynamicallyToggle={false}
    tableName="value_sets.value_set_rule"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    triggersOnFailure={[]}
    triggersOnSuccess={["load_rules"]}
    updateSetValueDynamically={true}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="load_rules"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="bulk_update_values"
    actionType="BULK_UPDATE_BY_KEY"
    bulkUpdatePrimaryKey="uuid"
    editorMode="gui"
    queryDisabled="{{value_set_version_metadata.data.status[0]=='active'}}"
    records={
      '{{ rules_table.recordUpdates.map(row => _.pick(row, ["uuid","value","rule_group"]) ) }}'
    }
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    runWhenModelUpdates={false}
    showSuccessConfetti={false}
    showUpdateSetValueDynamicallyToggle={false}
    tableName="value_sets.value_set_rule"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    triggersOnFailure={[]}
    triggersOnSuccess={["load_rules"]}
    updateSetValueDynamically={true}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="load_rules"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="delete_mapping_inclusion"
    query={include("./lib/delete_mapping_inclusion.sql", "string")}
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
      pluginId="load_mapping_inclusions"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="delete_rule"
    query={include("./lib/delete_rule.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    runWhenModelUpdates={false}
    showSuccessConfetti={false}
    showUpdateSetValueDynamicallyToggle={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    triggersOnFailure={[]}
    triggersOnSuccess={["load_rules"]}
    updateSetValueDynamically={true}
    warningCodes={[]}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="load_rules"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <RESTQuery
    id="generate_expansion"
    query="ValueSet/{{urlparams.uuid}}/$expand?force_new=true"
    queryDisabled="{{value_set_version_metadata.data.status[0] == 'active'}}"
    queryTimeout="120000"
    resourceDisplayName="INFX Internal Tools API"
    resourceName="a00335cd-bd3b-4d98-8af4-7ff590ce95e8"
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="load_expansion_metadata"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="load_expansion"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <SqlQueryUnified
    id="get_concept_map_list"
    isImported={true}
    playgroundQueryId={38}
    playgroundQueryUuid="096c70da-32df-4760-938b-ef22b18f121c"
    query={include("./lib/get_concept_map_list.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    retoolVersion="2.80.16"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="get_relationship_types_for_concept_map"
    query={include(
      "./lib/get_relationship_types_for_concept_map.sql",
      "string"
    )}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="load_expansion"
    query={include("./lib/load_expansion.sql", "string")}
    queryTimeout="12000"
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
    id="load_expansion_metadata"
    query={include("./lib/load_expansion_metadata.sql", "string")}
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
    id="load_expansion_uuid"
    query={include("./lib/load_expansion_uuid.sql", "string")}
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
      pluginId="load_expansion"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="load_explicit_inclusions"
    query={include("./lib/load_explicit_inclusions.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="load_mapping_inclusions"
    query={include("./lib/load_mapping_inclusions.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="load_rules"
    query={include("./lib/load_rules.sql", "string")}
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
    id="load_statuses"
    query={include("./lib/load_statuses.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
if ({{current_user.email}} != 'awest@projectronin.com' && {{current_user.email}} != 'rey@projectronin.com' && {{value_set_version_metadata.data.description[0].includes('ED')}} ) {
 const formatData = formatDataAsArray(data);
  return formatDataAsObject(formatData.filter(row => row.display !== 'active' && row.display !== 'retired'));
} else {
  return data;
}"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="load_terminologies"
    query={include("./lib/load_terminologies.sql", "string")}
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
    id="load_terminology_versions"
    query={include("./lib/load_terminology_versions.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="retire_previous_versions"
    query={include("./lib/retire_previous_versions.sql", "string")}
    queryDisabled="{{!(status_select.value == 'active' || value_set_version_metadata.data.status=='active')}}"
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="save_mapping_inclusion"
    query={include("./lib/save_mapping_inclusion.sql", "string")}
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
      pluginId="load_mapping_inclusions"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="update_status"
    confirmationMessage="Are you sure you want to update the status of version {{value_set_version_metadata.data.version}} of {{value_set_version_metadata.data.title}} to {{status_select.value}}?"
    query={include("./lib/update_status.sql", "string")}
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
      pluginId="value_set_version_metadata"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      enabled="{{status_select.value == 'active'}}"
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="retire_previous_versions"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="value_set_version_metadata"
    importedQueryInputs={{
      ordered: [{ value_set_version_uuid: "{{ urlparams.uuid }}" }],
    }}
    isImported={true}
    playgroundQueryId={61}
    playgroundQueryUuid="cf9b685f-d3f4-42d7-a949-ec3b57ae4456"
    query={include("./lib/value_set_version_metadata.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    retoolVersion="2.100.7"
    showLatestVersionUpdatedWarning={true}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
</GlobalFunctions>
