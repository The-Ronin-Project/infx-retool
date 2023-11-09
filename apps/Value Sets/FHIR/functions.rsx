<GlobalFunctions>
  <SqlQueryUnified
    id="load_fhir_target_concepts"
    query={include("./lib/load_fhir_target_concepts.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="load_fhir_terminologies"
    query={include("./lib/load_fhir_terminologies.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="load_fhir_terminology_versions"
    query={include("./lib/load_fhir_terminology_versions.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="max_position_num"
    importedQueryInputs={{
      ordered: [{ vs_version_uuid: "{{urlparams.value_set_version}}" }],
    }}
    isImported={true}
    playgroundQueryId={35}
    playgroundQueryUuid="fa12bc3a-d033-4777-a133-78d8dcca2e7d"
    query={include("./lib/max_position_num.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    retoolVersion="2.80.16"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="more_fhir_info"
    query={include("./lib/more_fhir_info.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="next_rule_group"
    importedQueryInputs={{
      ordered: [{ vs_version_uuid: "{{urlparams.value_set_version}}" }],
    }}
    isImported={true}
    playgroundQueryId={34}
    playgroundQueryUuid="b32806d2-0167-400c-a735-ad1982c27fdc"
    query={include("./lib/next_rule_group.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    retoolVersion="2.80.16"
    runWhenModelUpdates={false}
    runWhenPageLoads={true}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="save_fhir_rule"
    importedQueryInputs={{
      ordered: [
        { operator: "=" },
        { include: "true" },
        { position: "{{max_position_num.data.max_num[0] + 1}}" },
        { terminology_version: "{{select_fhir_version.value}}" },
        { value_set_version: "{{urlparams.value_set_version}}" },
        { value: "N/A" },
        { property: "has_fhir_terminology" },
        { new_uuid: "{{uuid.v4()}}" },
        { rule_group: "{{next_rule_group.data.next_num[0]}}" },
        { description: "{{rule_description.value}}" },
      ],
    }}
    isImported={true}
    playgroundQueryId={42}
    playgroundQueryUuid="5bff9f62-accc-4017-974e-28c9dcbde0b3"
    query={include("./lib/save_fhir_rule.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    retoolVersion="2.86.11"
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
      pluginId="next_rule_group"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="max_position_num"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
</GlobalFunctions>
