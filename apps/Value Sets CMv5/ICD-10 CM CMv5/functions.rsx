<GlobalFunctions>
  <SqlQueryUnified
    id="load_chapters"
    query={include("./lib/load_chapters.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="load_codes"
    query={include("./lib/load_codes.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="load_icd_10_cm_versions"
    importedQueryInputs={{ ordered: [{ terminology: "ICD-10 CM" }] }}
    isImported={true}
    playgroundQueryId={37}
    playgroundQueryName="load_versions_of_terminology"
    playgroundQueryUuid="e69988f8-38f5-4d49-a772-16830ebdd669"
    query={include("./lib/load_icd_10_cm_versions.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    retoolVersion="2.80.16"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="load_sections"
    query={include("./lib/load_sections.sql", "string")}
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
      ordered: [{ vs_version_uuid: "{{urlparams.vs_version_uuid}}" }],
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
      ordered: [{ vs_version_uuid: "{{urlparams.vs_version_uuid}}" }],
    }}
    isImported={true}
    playgroundQueryId={34}
    playgroundQueryName="next_rule_group_num"
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
    id="save_chapter_rule"
    importedQueryInputs={{
      ordered: [
        { operator: "in-chapter" },
        { include: "true" },
        { position: "{{max_position_num.data.max_num[0] + 1}}" },
        { terminology_version: "{{version_select.value}}" },
        { value_set_version: "{{urlparams.value_set_version}}" },
        { value: "{{chapter_table.selectedRow.data.uuid}}" },
        { property: "code" },
        { new_uuid: "{{uuid.v4()}}" },
        { rule_group: "{{next_rule_group.data.next_num[0]}}" },
        {
          description:
            "{{description_input.value + chapter_table.selectedRow.data.chapter_name}}",
        },
      ],
    }}
    isImported={true}
    playgroundQueryId={42}
    playgroundQueryName="save_value_set_rule"
    playgroundQueryUuid="5bff9f62-accc-4017-974e-28c9dcbde0b3"
    query={include("./lib/save_chapter_rule.sql", "string")}
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
    id="save_code_rule"
    importedQueryInputs={{
      ordered: [
        { operator: "=" },
        { include: "true" },
        { position: "{{max_position_num.data.max_num[0] + 1}}" },
        { terminology_version: "{{version_select.value}}" },
        { value_set_version: "{{urlparams.value_set_version}}" },
        { value: "{{code_table.selectedRow.data.code}}" },
        { property: "code" },
        { new_uuid: "{{uuid.v1()}}" },
        { rule_group: "{{next_rule_group.data.next_num[0]}}" },
        {
          description:
            "{{description_input.value + code_table.selectedRow.data.display}}",
        },
      ],
    }}
    isImported={true}
    playgroundQueryId={42}
    playgroundQueryName="save_value_set_rule"
    playgroundQueryUuid="5bff9f62-accc-4017-974e-28c9dcbde0b3"
    query={include("./lib/save_code_rule.sql", "string")}
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
  <SqlQueryUnified
    id="save_section_rule"
    importedQueryInputs={{
      ordered: [
        { operator: " in-section" },
        { include: "true" },
        { position: "{{max_position_num.data.max_num[0] + 1}}" },
        { terminology_version: "{{version_select.value}}" },
        { value_set_version: "{{urlparams.value_set_version}}" },
        { value: "{{section_table.selectedRow.data.uuid}}" },
        { property: "code" },
        { new_uuid: "{{uuid.v1()}}" },
        { rule_group: "{{next_rule_group.data.next_num[0]}}" },
        {
          description:
            "{{description_input.value + section_table.selectedRow.data.section_name}}",
        },
      ],
    }}
    isImported={true}
    playgroundQueryId={42}
    playgroundQueryName="save_value_set_rule"
    playgroundQueryUuid="5bff9f62-accc-4017-974e-28c9dcbde0b3"
    query={include("./lib/save_section_rule.sql", "string")}
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
  <ElasticSearchQuery
    id="search_keyword"
    query={include("./lib/search_keyword.json5", "string")}
    resourceDisplayName="ElasticSearch"
    resourceName="3e68115b-9776-4956-86b4-f468d2d1f836"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
</GlobalFunctions>
