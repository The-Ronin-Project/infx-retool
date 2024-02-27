<GlobalFunctions>
  <SqlQueryUnified
    id="approach_select_1"
    query={include("./lib/approach_select_1.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="body_part_select"
    query={include("./lib/body_part_select.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="body_system_select"
    query={include("./lib/body_system_select.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="device_select_1"
    query={include("./lib/device_select_1.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <JavascriptQuery
    id="exclude_result"
    query={include("./lib/exclude_result.js", "string")}
    queryFailureConditions="[]"
    resourceName="JavascriptQuery"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="prepare_rule_preview"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </JavascriptQuery>
  <SqlQueryUnified
    id="icd_10_pcs_code"
    query={include("./lib/icd_10_pcs_code.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="load_icd_10_pcs_versions"
    importedQueryInputs={{ ordered: [{ terminology: "ICD-10 PCS" }] }}
    isImported={true}
    playgroundQueryId={37}
    playgroundQueryName="load_versions_of_terminology"
    playgroundQueryUuid="e69988f8-38f5-4d49-a772-16830ebdd669"
    query={include("./lib/load_icd_10_pcs_versions.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    retoolVersion="2.80.16"
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
    playgroundQueryName="max_position_num"
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
    id="next_rule_group"
    importedQueryInputs={{
      ordered: [{ vs_version_uuid: "{{urlparams.value_set_version}}" }],
    }}
    isImported={true}
    playgroundQueryId={34}
    playgroundQueryName="next_rule_group_num"
    playgroundQueryUuid="b32806d2-0167-400c-a735-ad1982c27fdc"
    query={include("./lib/next_rule_group.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    retoolVersion="2.80.16"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <RESTQuery
    id="populate_rule_preview"
    body="{{prepare_rule_preview.data}}"
    bodyType="raw"
    headers={'[{"key":"Content-Type","value":"application/json"}]'}
    query="ValueSets/rule_set/execute"
    queryTimeout="100000"
    resourceDisplayName="INFX Internal Tools API"
    resourceName="a00335cd-bd3b-4d98-8af4-7ff590ce95e8"
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    type="POST"
  />
  <JavascriptQuery
    id="prepare_rule_preview"
    query={include("./lib/prepare_rule_preview.js", "string")}
    queryFailureConditions="[]"
    resourceName="JavascriptQuery"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="populate_rule_preview"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </JavascriptQuery>
  <SqlQueryUnified
    id="qualifier_select_1"
    query={include("./lib/qualifier_select_1.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="root_operation_select"
    query={include("./lib/root_operation_select.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="save_approach_rules"
    importedQueryInputs={{
      ordered: [
        { operator: "has-approach" },
        { include: "true" },
        { position: "{{max_position_num.data.max_num[0] + 1}}" },
        { terminology_version: "{{version_select.value}}" },
        { value_set_version: "{{urlparams.value_set_version}}" },
        { value: "{{JSON.stringify(approach_select.value)}}" },
        { property: "code" },
        { new_uuid: "{{uuid.v1()}}" },
        { rule_group: "{{next_rule_group.data.next_num[0]}}" },
        { description: "{{description_input.value}}" },
      ],
    }}
    isImported={true}
    playgroundQueryId={42}
    playgroundQueryName="save_value_set_rule"
    playgroundQueryUuid="5bff9f62-accc-4017-974e-28c9dcbde0b3"
    query={include("./lib/save_approach_rules.sql", "string")}
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
      pluginId="max_position_num"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="next_rule_group"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="save_body_part_rules"
    importedQueryInputs={{
      ordered: [
        { operator: "has-body-part" },
        { include: "true" },
        { position: "{{max_position_num.data.max_num[0] + 1}}" },
        { terminology_version: "{{version_select.value}}" },
        { value_set_version: "{{urlparams.value_set_version}}" },
        { value: "{{JSON.stringify(body_part.value)}}" },
        { property: "code" },
        { new_uuid: "{{uuid.v1()}}" },
        { rule_group: "{{next_rule_group.data.next_num[0]}}" },
        { description: "{{description_input.value}}" },
      ],
    }}
    isImported={true}
    playgroundQueryId={42}
    playgroundQueryName="save_value_set_rule"
    playgroundQueryUuid="5bff9f62-accc-4017-974e-28c9dcbde0b3"
    query={include("./lib/save_body_part_rules.sql", "string")}
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
      pluginId="max_position_num"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="next_rule_group"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="save_body_system_rules"
    importedQueryInputs={{
      ordered: [
        { operator: "has-body-system" },
        { include: "true" },
        { position: "{{max_position_num.data.max_num[0] + 1}}" },
        { terminology_version: "{{version_select.value}}" },
        { value_set_version: "{{urlparams.value_set_version}}" },
        { value: "{{JSON.stringify(body_system.value)}}" },
        { property: "code" },
        { new_uuid: "{{uuid.v1()}}" },
        { rule_group: "{{next_rule_group.data.next_num[0]}}" },
        { description: "{{description_input.value }}" },
      ],
    }}
    isImported={true}
    playgroundQueryId={42}
    playgroundQueryName="save_value_set_rule"
    playgroundQueryUuid="5bff9f62-accc-4017-974e-28c9dcbde0b3"
    query={include("./lib/save_body_system_rules.sql", "string")}
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
      pluginId="max_position_num"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="next_rule_group"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="save_device_rules"
    importedQueryInputs={{
      ordered: [
        { operator: "has-device" },
        { include: "true" },
        { position: "{{max_position_num.data.max_num[0] + 1}}" },
        { terminology_version: "{{version_select.value}}" },
        { value_set_version: "{{urlparams.value_set_version}}" },
        { value: "{{JSON.stringify(device_select.value)}}" },
        { property: "code" },
        { new_uuid: "{{uuid.v1()}}" },
        { rule_group: "{{next_rule_group.data.next_num[0]}}" },
        { description: "{{description_input.value}}" },
      ],
    }}
    isImported={true}
    playgroundQueryId={42}
    playgroundQueryName="save_value_set_rule"
    playgroundQueryUuid="5bff9f62-accc-4017-974e-28c9dcbde0b3"
    query={include("./lib/save_device_rules.sql", "string")}
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
      pluginId="max_position_num"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="next_rule_group"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="save_exclude"
    importedQueryInputs={{
      ordered: [
        { operator: "in" },
        { include: "false" },
        { position: "{{max_position_num.data.max_num[0] + 1}}" },
        { terminology_version: "{{version_select.value}}" },
        { value_set_version: "{{urlparams.value_set_version}}" },
        { value: "{{JSON.stringify(exclusions_code.value.split(','))}}" },
        { property: "code" },
        { new_uuid: "{{uuid.v1()}}" },
        { rule_group: "{{next_rule_group.data.next_num[0]}}" },
        { description: "{{description_input.value}}" },
      ],
    }}
    isImported={true}
    playgroundQueryId={42}
    playgroundQueryName="save_value_set_rule"
    playgroundQueryUuid="5bff9f62-accc-4017-974e-28c9dcbde0b3"
    query={include("./lib/save_exclude.sql", "string")}
    queryDisabled="{{exclusions_code.value == ''}}"
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
      pluginId="max_position_num"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="next_rule_group"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="save_qualifier_rules"
    importedQueryInputs={{
      ordered: [
        { operator: "has-qualifier" },
        { include: "true" },
        { position: "{{max_position_num.data.max_num[0] + 1}}" },
        { terminology_version: "{{version_select.value}}" },
        { value_set_version: "{{urlparams.value_set_version}}" },
        { value: "{{JSON.stringify(qualifier_select.value)}}" },
        { property: "code" },
        { new_uuid: "{{uuid.v1()}}" },
        { rule_group: "{{next_rule_group.data.next_num[0]}}" },
        { description: "{{description_input.value}}" },
      ],
    }}
    isImported={true}
    playgroundQueryId={42}
    playgroundQueryName="save_value_set_rule"
    playgroundQueryUuid="5bff9f62-accc-4017-974e-28c9dcbde0b3"
    query={include("./lib/save_qualifier_rules.sql", "string")}
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
      pluginId="max_position_num"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="next_rule_group"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="save_root_operation_rules"
    importedQueryInputs={{
      ordered: [
        { operator: "has-root-operation" },
        { include: "true" },
        { position: "{{max_position_num.data.max_num[0] + 1}}" },
        { terminology_version: "{{version_select.value}}" },
        { value_set_version: "{{urlparams.value_set_version}}" },
        { value: "{{JSON.stringify(root_operation.value)}}" },
        { property: "code" },
        { new_uuid: "{{uuid.v1()}}" },
        { rule_group: "{{next_rule_group.data.next_num[0]}}" },
        { description: "{{description_input.value}}" },
      ],
    }}
    isImported={true}
    playgroundQueryId={42}
    playgroundQueryName="save_value_set_rule"
    playgroundQueryUuid="5bff9f62-accc-4017-974e-28c9dcbde0b3"
    query={include("./lib/save_root_operation_rules.sql", "string")}
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
      pluginId="max_position_num"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="next_rule_group"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="save_section_rules"
    importedQueryInputs={{
      ordered: [
        { operator: "in-section" },
        { include: "true" },
        { position: "{{max_position_num.data.max_num[0] + 1}}" },
        { terminology_version: "{{version_select.value}}" },
        { value_set_version: "{{urlparams.value_set_version}}" },
        { value: "{{JSON.stringify(pcs_section.value)}}" },
        { property: "code" },
        { new_uuid: "{{uuid.v1()}}" },
        { rule_group: "{{next_rule_group.data.next_num[0]}}" },
        { description: "{{description_input.value}}" },
      ],
    }}
    isImported={true}
    playgroundQueryId={42}
    playgroundQueryName="save_value_set_rule"
    playgroundQueryUuid="5bff9f62-accc-4017-974e-28c9dcbde0b3"
    query={include("./lib/save_section_rules.sql", "string")}
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
      pluginId="max_position_num"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="next_rule_group"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="section_select"
    query={include("./lib/section_select.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="table_results"
    query={include("./lib/table_results.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
</GlobalFunctions>
