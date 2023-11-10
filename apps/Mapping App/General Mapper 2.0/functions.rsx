<GlobalFunctions>
  <JavascriptQuery
    id="aggregate_search"
    query={include("./lib/aggregate_search.js", "string")}
    queryFailureConditions="[]"
    resourceName="JavascriptQuery"
    runWhenPageLoads={true}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <SqlQueryUnified
    id="clear_no_map_reason_query"
    query={include("./lib/clear_no_map_reason_query.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    runWhenModelUpdates={false}
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
    warningCodes={[]}
  />
  <JavascriptQuery
    id="combined_queue_query"
    query={include("./lib/combined_queue_query.js", "string")}
    queryFailureConditions="[]"
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <SqlQueryUnified
    id="complete_mapping"
    query={include("./lib/complete_mapping.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  >
    <Event
      enabled="{{mapping_group_select.value!=='rejected'&& mapping_group_select.value!=='no_map_rejected'}}"
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="load_queue"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      enabled="{{mapping_group_select.value=='rejected'}}"
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="load_rejected_queue"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="selectRow"
      params={{ ordered: [] }}
      pluginId="mapping_queue"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="delete_mapping"
    query={include("./lib/delete_mapping.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="load_rejected_queue"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="load_queue"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="load_mapped_targets"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="getUserMatch"
    importedQueryInputs={{
      ordered: [{ variable0: "{{ current_user.fullName }}" }],
    }}
    isImported={true}
    playgroundQueryId={57}
    playgroundQueryName="current_user_uuid"
    playgroundQuerySaveId={75}
    playgroundQueryUuid="82055517-d633-47dc-b73f-d51cbbcf3b92"
    query={include("./lib/getUserMatch.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    retoolVersion="2.95.3"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="getUsers"
    query={include("./lib/getUsers.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="load_mapped_targets"
    body={
      '[{"key":"source_concept_uuid","value":"{{mapping_queue.selectedRow.data.uuid}}"},{"key":"relationship_code_uuid","value":"{{select_rel.value}}"},{"key":"target_concept_code","value":"{{search_results_table.selectedRow.data.code}}"},{"key":"target_concept_display","value":"{{search_results_table.selectedRow.data.display}}"},{"key":"target_concept_terminology_version_uuid","value":"{{search_results_table.selectedRow.data.terminology_version_uuid}}"},{"key":"mapping_comments","value":"{{mapping_comments.value}}"},{"key":"author","value":"{{user_select.selectedLabel}}"}]'
    }
    paginationLimit=""
    query={include("./lib/load_mapped_targets.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="load_mapping_groups"
    enableTransformer={true}
    query={include("./lib/load_mapping_groups.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
let finalResults = data
finalResults.mapping_group.push('rejected')
return finalResults"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="load_metadata"
    query={include("./lib/load_metadata.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="load_queue"
    query={include("./lib/load_queue.sql", "string")}
    queryThrottleTime="0"
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
      pluginId="combined_queue_query"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="load_rejected_queue"
    query={include("./lib/load_rejected_queue.sql", "string")}
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
      pluginId="combined_queue_query"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="load_settings"
    query={include("./lib/load_settings.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    runWhenModelUpdates={false}
    runWhenPageLoads={true}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <RESTQuery
    id="map_it"
    body={
      '[{"key":"source_concept_uuids","value":"{{mapping_queue.selectedRow.data.map(data => data.uuid)}}"},{"key":"relationship_code_uuid","value":"{{select_rel.value}}"},{"key":"target_concept_code","value":"{{search_results_table.selectedRow.data.code}}"},{"key":"target_concept_display","value":"{{search_results_table.selectedRow.data.display}}"},{"key":"target_concept_terminology_version_uuid","value":"{{search_results_table.selectedRow.data.terminology_version_uuid}}"},{"key":"author","value":"{{current_user.fullName}}"},{"key":"mapping_comments","value":"{{mapping_comments.value}}"}]'
    }
    bodyType="json"
    headers="[]"
    query="mappings/"
    resourceDisplayName="INFX Internal Tools API"
    resourceName="a00335cd-bd3b-4d98-8af4-7ff590ce95e8"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    type="POST"
  >
    <Event
      enabled=""
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="clear_no_map_reason_query"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="clearValue"
      params={{ ordered: [] }}
      pluginId="mapping_comments"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="selectRow"
      params={{ ordered: [] }}
      pluginId="mapping_queue"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="load_queue"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <RESTQuery
    id="no__map_map_it"
    body={
      '[{"key":"source_concept_uuids","value":"{{mapping_queue.selectedRow.data.map(data => data.uuid)}}"},{"key":"relationship_code_uuid","value":"\\"dca7c556-82d9-4433-8971-0b7edb9c9661\\""},{"key":"target_concept_code","value":"\\"No map\\""},{"key":"target_concept_display","value":"\\"No matching concept\\""},{"key":"target_concept_terminology_version_uuid","value":"\\"93ec9286-17cf-4837-a4dc-218ce3015de6\\""},{"key":"author","value":"{{current_user.fullName}}"},{"key":"mapping_comments","value":"{{mapping_comments.value}}"},{"key":"","value":""}]'
    }
    bodyType="json"
    headers="[]"
    query="mappings/"
    resourceDisplayName="INFX Internal Tools API"
    resourceName="a00335cd-bd3b-4d98-8af4-7ff590ce95e8"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    type="POST"
  >
    <Event
      enabled=""
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="load_queue"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="clearValue"
      params={{ ordered: [] }}
      pluginId="mapping_comments"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="selectRow"
      params={{ ordered: [] }}
      pluginId="mapping_queue"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <SqlQueryUnified
    id="relationship_choices"
    query={include("./lib/relationship_choices.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="save_for_discussion_query"
    query={include("./lib/save_for_discussion_query.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
    warningCodes={[]}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="load_queue"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="clearValue"
      params={{ ordered: [] }}
      pluginId="mapping_comments"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="set_reason_conflicting_information"
    query={include("./lib/set_reason_conflicting_information.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
    warningCodes={[]}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="no__map_map_it"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="set_reason_not_enough_information"
    query={include("./lib/set_reason_not_enough_information.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
    warningCodes={[]}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="no__map_map_it"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="set_reason_not_in_target_code_system"
    query={include("./lib/set_reason_not_in_target_code_system.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
    warningCodes={[]}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="no__map_map_it"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="set_reason_other"
    query={include("./lib/set_reason_other.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
    warningCodes={[]}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="no__map_map_it"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="source_term_additional_info"
    query={include("./lib/source_term_additional_info.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <RESTQuery
    id="search"
    body={
      '[{"key":"query","value":"{    bool: {      filter:{        term: {          \\"concept_map_version_uuid.keyword\\": {{urlparams.concept_map_version_uuid}}        }      },      must:{        multi_match: {          query: {{ search_text_input.value }},          fields: [\\"code\\", \\"display\\"],          type: \\"bool_prefix\\"          }      },    }}"}]'
    }
    bodyType="json"
    isMultiplayerEdited={false}
    query="target_concepts_for_mapping/_search?size=50"
    resourceDisplayName="OpenSearch API"
    resourceName="cd5755b4-f1e3-43ed-9532-894ef58a329d"
    resourceTypeOverride=""
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="aggregate_search"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <RESTQuery
    id="search_match_all"
    body={
      '[{"key":"query","value":"{term: {\\"concept_map_version_uuid.keyword\\": {{urlparams.concept_map_version_uuid}} }}"}]'
    }
    bodyType="json"
    query="target_concepts_for_mapping/_search?size=50"
    resourceDisplayName="OpenSearch API"
    resourceName="cd5755b4-f1e3-43ed-9532-894ef58a329d"
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="aggregate_search"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
</GlobalFunctions>
