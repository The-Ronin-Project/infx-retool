<GlobalFunctions>
  <JavascriptQuery
    id="create_value_term_type"
    query={include("./lib/create_value_term_type.js", "string")}
    queryFailureConditions="[]"
    resourceName="JavascriptQuery"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <JavascriptQuery
    id="create_value_term_type_in_class"
    query={include("./lib/create_value_term_type_in_class.js", "string")}
    queryFailureConditions="[]"
    resourceName="JavascriptQuery"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <RESTQuery
    id="getAllConceptsByTTY"
    query="allconcepts.json?tty={{term_type.value}}"
    resourceDisplayName="RxNorm API concepts by TTY"
    resourceName="ea856bd5-83c3-438a-85e0-2f30baf41e56"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <RESTQuery
    id="getRelas"
    query="relas.json?relaSource={{classification_source.value}}"
    resourceDisplayName="RxClass API"
    resourceName="ceb5b54b-79db-4774-a5d6-ee2663b7c0bb"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <RESTQuery
    id="getSourcesofDrugClassRelations"
    query="relaSources.json"
    resourceDisplayName="RxClass API"
    resourceName="ceb5b54b-79db-4774-a5d6-ee2663b7c0bb"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <RESTQuery
    id="getTermTypes"
    query="termtypes.json"
    resourceDisplayName="RxNormAPI"
    resourceName="0df79934-c6a7-406a-be20-768097ceac19"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="create_value_term_type"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <RESTQuery
    id="getVersion"
    query="version.json"
    resourceDisplayName="RxNormAPI"
    resourceName="0df79934-c6a7-406a-be20-768097ceac19"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <SqlQueryUnified
    id="max_positition"
    importedQueryInputs={{
      ordered: [{ vs_version_uuid: "{{urlparams.value_set_version}}" }],
    }}
    isImported={true}
    playgroundQueryId={35}
    playgroundQueryName="max_position_num"
    playgroundQueryUuid="fa12bc3a-d033-4777-a133-78d8dcca2e7d"
    query={include("./lib/max_positition.sql", "string")}
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
    runWhenModelUpdates={false}
    runWhenPageLoads={true}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <RESTQuery
    id="preview_rule_output"
    body={
      '[{"key":"property","value":"term_type_within_class"},{"key":"operator","value":"="},{"key":"value","value":""},{"key":"include","value":"true"},{"key":"terminology_version","value":"{{version_select.value}}"}]'
    }
    bodyType="json"
    query="ValueSets/rule_set/execute"
    resourceDisplayName="INFX Internal Tools API"
    resourceName="a00335cd-bd3b-4d98-8af4-7ff590ce95e8"
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    type="POST"
  />
  <SqlQueryUnified
    id="rule_group"
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <SqlQueryUnified
    id="save_term_type_concepts_rule"
    importedQueryInputs={{
      ordered: [
        { operator: "=" },
        { include: "true" },
        { position: "{{max_positition.data.max_num[0] +1}}" },
        { terminology_version: "{{version_select.value}}" },
        { value_set_version: "{{urlparams.value_set_version}}" },
        { value: "{{term_type.value}}" },
        { property: "term_type " },
        { new_uuid: "{{uuid.v1()}}" },
        { rule_group: "{{next_rule_group.data.next_num[0]}}" },
        { description: "{{description_for_term_type.value}}" },
      ],
    }}
    isImported={true}
    playgroundQueryId={42}
    playgroundQueryName="save_value_set_rule"
    playgroundQueryUuid="5bff9f62-accc-4017-974e-28c9dcbde0b3"
    query={include("./lib/save_term_type_concepts_rule.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    retoolVersion="2.86.11"
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="save_term_type_in_class_rule"
    importedQueryInputs={{
      ordered: [
        { operator: "=" },
        { include: "true" },
        { position: "{{max_positition.data.max_num[0] +1}}" },
        { terminology_version: "{{version_select.value}}" },
        { value_set_version: "{{urlparams.value_set_version}}" },
        { value: "{{create_value_term_type_in_class.data}}" },
        { property: "term_type_within_class" },
        { new_uuid: "{{uuid.v1()}}" },
        { rule_group: "{{next_rule_group.data.next_num[0]}}" },
        { description: "{{description_input.value}}" },
      ],
    }}
    isImported={true}
    playgroundQueryId={42}
    playgroundQueryName="save_value_set_rule"
    playgroundQueryUuid="5bff9f62-accc-4017-974e-28c9dcbde0b3"
    query={include("./lib/save_term_type_in_class_rule.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    retoolVersion="2.86.11"
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="version_selection"
    query={include("./lib/version_selection.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
    warningCodes={[]}
  />
</GlobalFunctions>
