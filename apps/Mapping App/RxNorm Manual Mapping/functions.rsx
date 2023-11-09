<GlobalFunctions>
  <RESTQuery
    id="getInfoBeforeMapping"
    enableTransformer={true}
    query="RxTerms/rxcui/{{rxcui_input.value}}/allinfo.json"
    queryDisabled={'{{rxcui_input.value == ""}}'}
    resourceDisplayName="RxNormAPI"
    resourceName="0df79934-c6a7-406a-be20-768097ceac19"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data['rxtermsProperties']"
  />
  <RESTQuery
    id="getIngredients"
    query="rxcui/{{rxcui_input.value}}/property.json?propName=Active_ingredient_name"
    queryTimeout="100000"
    resourceDisplayName="RxNormAPI"
    resourceName="0df79934-c6a7-406a-be20-768097ceac19"
    transformer="// let propConceptGroup = data['propConceptGroup']['propConcept'][0]
// return propConceptGroup ? propConceptGroup : null"
  />
  <SqlQueryUnified
    id="getUserMatch"
    importedQueryInputs={{
      ordered: [{ variable0: "{{ current_user.fullName }}" }],
    }}
    isImported={true}
    playgroundQueryId={57}
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
    id="load_mapping_groups"
    query={include("./lib/load_mapping_groups.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
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
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  >
    <Event
      event="success"
      method="setValue"
      params={{
        ordered: [{ value: "{{mapping_queue.selectedRow.data.display}}" }],
      }}
      pluginId="search_text_input"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <RESTQuery
    id="map_branded_drug"
    body={
      '[{"key":"source_concept_uuid","value":"{{mapping_queue.selectedRow.data.uuid}}"},{"key":"relationship_code_uuid","value":"f2a20235-bd9d-4f6a-8e78-b3f41f97d07f"},{"key":"target_concept_code","value":"{{sbd_table.selectedRow.data.rxcui}}"},{"key":"target_concept_display","value":"{{sbd_table.selectedRow.data.name}}"},{"key":"target_concept_terminology_version_uuid","value":"3dae1d22-06a1-4e60-98e7-42a2a241bf9d"},{"key":"author","value":"{{user_select.selectedLabel}}"},{"key":"mapping_comments","value":"{{mapping_comments.value}}"}]'
    }
    bodyType="json"
    query="mappings/"
    resourceDisplayName="INFX Internal Tools API"
    resourceName="a00335cd-bd3b-4d98-8af4-7ff590ce95e8"
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    type="POST"
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
    <Event
      event="success"
      method="clearValue"
      params={{ ordered: [] }}
      pluginId="rxcui_input"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <RESTQuery
    id="map_branded_pack"
    body={
      '[{"key":"source_concept_uuid","value":"{{mapping_queue.selectedRow.data.uuid}}"},{"key":"relationship_code_uuid","value":"f2a20235-bd9d-4f6a-8e78-b3f41f97d07f"},{"key":"target_concept_code","value":"{{bpck_table.selectedRow.data.rxcui}}"},{"key":"target_concept_display","value":"{{bpck_table.selectedRow.data.name}}"},{"key":"target_concept_terminology_version_uuid","value":"3dae1d22-06a1-4e60-98e7-42a2a241bf9d"},{"key":"author","value":"{{user_select.selectedLabel}}"},{"key":"mapping_comments","value":"{{mapping_comments.value}}"}]'
    }
    bodyType="json"
    cookies={'[{"key":"","value":""},{"key":"","value":""}]'}
    query="mappings/?"
    resourceDisplayName="INFX Internal Tools API"
    resourceName="a00335cd-bd3b-4d98-8af4-7ff590ce95e8"
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    type="POST"
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
    <Event
      event="success"
      method="clearValue"
      params={{ ordered: [] }}
      pluginId="rxcui_input"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <RESTQuery
    id="map_clinical_drug"
    body={
      '[{"key":"source_concept_uuid","value":"{{mapping_queue.selectedRow.data.uuid}}"},{"key":"relationship_code_uuid","value":"f2a20235-bd9d-4f6a-8e78-b3f41f97d07f"},{"key":"target_concept_code","value":"{{scd_table.selectedRow.data.rxcui}}"},{"key":"target_concept_display","value":"{{scd_table.selectedRow.data.name}}"},{"key":"target_concept_terminology_version_uuid","value":"3dae1d22-06a1-4e60-98e7-42a2a241bf9d"},{"key":"author","value":"{{user_select.selectedLabel}}"},{"key":"mapping_comments","value":"{{mapping_comments.value}}"}]'
    }
    bodyType="json"
    query="mappings/"
    resourceDisplayName="INFX Internal Tools API"
    resourceName="a00335cd-bd3b-4d98-8af4-7ff590ce95e8"
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    type="POST"
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
    <Event
      event="success"
      method="clearValue"
      params={{ ordered: [] }}
      pluginId="rxcui_input"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <RESTQuery
    id="map_equivalent_from_detail_view"
    body={
      '[{"key":"source_concept_uuid","value":"{{mapping_queue.selectedRow.data.uuid}}"},{"key":"relationship_code_uuid","value":"f2a20235-bd9d-4f6a-8e78-b3f41f97d07f"},{"key":"target_concept_code","value":"{{detailView.data.rxcui}}"},{"key":"target_concept_display","value":"{{detailView.data.fullName}}"},{"key":"target_concept_terminology_version_uuid","value":"3dae1d22-06a1-4e60-98e7-42a2a241bf9d"},{"key":"author","value":"{{user_select.selectedLabel}}"},{"key":"mapping_comments","value":"{{mapping_comments.value}}"}]'
    }
    bodyType="json"
    query="mappings/?"
    resourceDisplayName="INFX Internal Tools API"
    resourceName="a00335cd-bd3b-4d98-8af4-7ff590ce95e8"
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    type="POST"
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
    <Event
      event="success"
      method="clearValue"
      params={{ ordered: [] }}
      pluginId="rxcui_input"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <RESTQuery
    id="map_generic_pack"
    body={
      '[{"key":"source_concept_uuid","value":"{{mapping_queue.selectedRow.data.uuid}}"},{"key":"relationship_code_uuid","value":"f2a20235-bd9d-4f6a-8e78-b3f41f97d07f"},{"key":"target_concept_code","value":"{{gpck_table.selectedRow.data.rxcui}}"},{"key":"target_concept_display","value":"{{gpck_table.selectedRow.data.name}}"},{"key":"target_concept_terminology_version_uuid","value":"3dae1d22-06a1-4e60-98e7-42a2a241bf9d"},{"key":"author","value":"{{user_select.selectedLabel}}"},{"key":"mapping_comments","value":"{{mapping_comments.value}}"}]'
    }
    bodyType="json"
    query="mappings/?"
    resourceDisplayName="INFX Internal Tools API"
    resourceName="a00335cd-bd3b-4d98-8af4-7ff590ce95e8"
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    type="POST"
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
    <Event
      event="success"
      method="clearValue"
      params={{ ordered: [] }}
      pluginId="rxcui_input"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <RESTQuery
    id="map_narrower_from_detail_view"
    body={
      '[{"key":"source_concept_uuid","value":"{{mapping_queue.selectedRow.data.uuid}}"},{"key":"relationship_code_uuid","value":"dca7c556-82d9-4433-8971-0b7edb9c9661"},{"key":"target_concept_code","value":"{{detailView.data.rxcui}}"},{"key":"target_concept_display","value":"{{detailView.data.fullName}}"},{"key":"target_concept_terminology_version_uuid","value":"3dae1d22-06a1-4e60-98e7-42a2a241bf9d"},{"key":"author","value":"{{user_select.selectedLabel}}"},{"key":"mapping_comments","value":"{{mapping_comments.value}}"}]'
    }
    bodyType="json"
    query="mappings/?"
    resourceDisplayName="INFX Internal Tools API"
    resourceName="a00335cd-bd3b-4d98-8af4-7ff590ce95e8"
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    type="POST"
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
    <Event
      event="success"
      method="clearValue"
      params={{ ordered: [] }}
      pluginId="rxcui_input"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <SqlQueryUnified
    id="no_map_it"
    actionType="UPDATE_BY"
    changeset={
      '[{"key":"no_map","value":"true"},{"key":"reason_for_no_map","value":"{{no_map.selectedItem.label}}"}]'
    }
    editorMode="gui"
    filterBy={
      '[{"key":"uuid","value":"{{mapping_queue.selectedRow.data.uuid}}","operation":"="}]'
    }
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    runWhenModelUpdates={false}
    tableName="concept_maps.source_concept"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
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
    <Event
      event="success"
      method="clearValue"
      params={{ ordered: [] }}
      pluginId="rxcui_input"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <RESTQuery
    id="search_rxnorm"
    query="rxnorm_search?query_string={{search_text_input.value}}"
    resourceDisplayName="INFX Internal Tools API"
    resourceName="a00335cd-bd3b-4d98-8af4-7ff590ce95e8"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  >
    <Event
      enabled="{{search_rxnorm.data.results.SCD !== undefined && search_rxnorm.data.results.SCD !== null && search_rxnorm.data.results.SCD.map(x => x.rxcui).includes(search_rxnorm.data.top_rxcui)}}"
      event="success"
      method="setCurrentViewIndex"
      params={{ ordered: [{ viewIndex: "0" }] }}
      pluginId="rxnorm_search_results_container"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      enabled="{{search_rxnorm.data.results.SBD !== undefined && search_rxnorm.data.results.SBD !== undefined && search_rxnorm.data.results.SBD.map(x => x.rxcui).includes(search_rxnorm.data.top_rxcui)}}"
      event="success"
      method="setCurrentViewIndex"
      params={{ ordered: [{ viewIndex: "1" }] }}
      pluginId="rxnorm_search_results_container"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      enabled="{{search_rxnorm.data.results.GPCK !== undefined && search_rxnorm.data.results.GPCK !== null && search_rxnorm.data.results.GPCK.map(x => x.rxcui).includes(search_rxnorm.data.top_rxcui)}}"
      event="success"
      method="setCurrentViewIndex"
      params={{ ordered: [{ viewIndex: "2" }] }}
      pluginId="rxnorm_search_results_container"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      enabled="{{search_rxnorm.data.results.BPCK !== undefined && search_rxnorm.data.results.BPCK !== null && search_rxnorm.data.results.BPCK.map(x => x.rxcui).includes(search_rxnorm.data.top_rxcui)}}"
      event="success"
      method="setCurrentViewIndex"
      params={{ ordered: [{ viewIndex: "3" }] }}
      pluginId="rxnorm_search_results_container"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <RESTQuery
    id="top_rxcui_name"
    query="rxcui/{{search_rxnorm.data.top_rxcui}}/properties.json?caller=RxNav"
    resourceDisplayName="RxNormAPI"
    resourceName="0df79934-c6a7-406a-be20-768097ceac19"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
</GlobalFunctions>
