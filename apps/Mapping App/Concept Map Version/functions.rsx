<GlobalFunctions>
  <Folder id="new_version">
    <Function
      id="is_most_recent_source_transformer"
      funcBody={include("./lib/is_most_recent_source_transformer.js", "string")}
    />
    <Function
      id="is_most_recent_target_transformer"
      funcBody={include("./lib/is_most_recent_target_transformer.js", "string")}
    />
    <SqlQueryUnified
      id="source_value_set_info"
      query={include("./lib/source_value_set_info.sql", "string")}
      resourceDisplayName="Clinical Content PostgresSQL DB"
      resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="source_value_set_info2"
      query={include("./lib/source_value_set_info2.sql", "string")}
      resourceDisplayName="Clinical Content PostgresSQL DB"
      resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="target_value_set_info"
      query={include("./lib/target_value_set_info.sql", "string")}
      resourceDisplayName="Clinical Content PostgresSQL DB"
      resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="target_value_set_info2"
      query={include("./lib/target_value_set_info2.sql", "string")}
      resourceDisplayName="Clinical Content PostgresSQL DB"
      resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
    />
  </Folder>
  <SqlQueryUnified
    id="concept_map_version_counts"
    query={include("./lib/concept_map_version_counts.sql", "string")}
    queryTimeout="10001"
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    triggersOnFailure={null}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="get_statuses"
    query={include("./lib/get_statuses.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="load_concept_map_version_metadata"
    query={include("./lib/load_concept_map_version_metadata.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="load_latest_version_query"
    query={include("./lib/load_latest_version_query.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="mapping_with_valueset_table"
    enableTransformer={true}
    query={include("./lib/mapping_with_valueset_table.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer=""
    warningCodes={[]}
  />
  <JavascriptQuery
    id="navigate_to_mapper"
    queryFailureConditions="[]"
    resourceName="JavascriptQuery"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  >
    <Event
      enabled="{{load_concept_map_version_metadata.data.target_value_set_uuid=='835662e6-5379-4801-ba27-01b4481e33ff'}}"
      event="success"
      method="openApp"
      params={{
        ordered: [
          { uuid: "acbbd180-308f-11ed-a0d2-97f043728495" },
          {
            options: {
              ordered: [
                {
                  queryParams: [
                    {
                      ordered: [
                        { key: "concept_map_version_uuid" },
                        { value: "{{versions_table.selectedRow.data.uuid}}" },
                      ],
                    },
                  ],
                },
              ],
            },
          },
        ],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      enabled="{{!['835662e6-5379-4801-ba27-01b4481e33ff'].includes(load_concept_map_version_metadata.data.target_value_set_uuid.toString())}}"
      event="success"
      method="openApp"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                {
                  queryParams: [
                    {
                      ordered: [
                        { key: "concept_map_version_uuid" },
                        { value: "{{versions_table.selectedRow.data.uuid}}" },
                      ],
                    },
                  ],
                },
              ],
            },
          },
          { uuid: "184659c0-4e4f-11ed-8a53-4f14117ffdcc" },
        ],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
  </JavascriptQuery>
  <RESTQuery
    id="new_version_submission"
    body={
      '[{"key":"new_version_description","value":"{{description_input.value}}"},{"key":"new_source_value_set_version_uuid","value":"{{ source_value_set_info.data.value_set_version_uuid[0]}}"},{"key":"new_target_value_set_version_uuid","value":"{{target_value_set_info.data.value_set_version_uuid[0]}}"},{"key":"require_review_for_non_equivalent_relationships","value":"{{checkbox_require_review_for_non_equivalent_relationships.value}}"},{"key":"require_review_no_maps_not_in_target","value":"{{checkbox_require_review_no_maps_not_in_target.value}}"},{"key":"","value":""},{"key":"","value":""}]'
    }
    bodyType="json"
    query="ConceptMaps/{{select_concept_map_version.data.uuid[0]}}/new_version_from_previous"
    resourceDisplayName="INFX Internal Tools API"
    resourceName="a00335cd-bd3b-4d98-8af4-7ff590ce95e8"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    type="POST"
  >
    <Event
      event="success"
      method="confetti"
      params={{ ordered: [] }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="select_concept_map_version"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <SqlQueryUnified
    id="populate_more_info_modal"
    query={include("./lib/populate_more_info_modal.sql", "string")}
    queryTimeout="10001"
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    triggersOnFailure={null}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="report_with_valuesets"
    query={include("./lib/report_with_valuesets.sql", "string")}
    queryTimeout="100000"
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    runWhenModelUpdates={false}
    transformer="return formatDataAsArray(data).map(row => ({source_code:row.sc_code, source_display:row.sc_display, target_code: row.target_concept_code, target_display: row.target_concept_display, title: row.vs_title, comments: row.mapping_comments}))"
    warningCodes={[]}
  >
    <Event
      event="success"
      method="exportData"
      params={{
        ordered: [
          { fileType: "xlsx" },
          {
            fileName:
              "{{metadata_key_table.data.title}} Version {{versions_table.selectedRow.data.version}}",
          },
          { data: "{{report_with_valuesets.data}}" },
          { options: { ordered: [{ sheetName: "Concept Map" }] } },
        ],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="save_concept_map_metadata_changes"
    actionType="BULK_UPDATE_BY_KEY"
    bulkUpdatePrimaryKey="uuid"
    editorMode="gui"
    records="{{edit_metadata.recordUpdates.map(row => ({uuid: row.uuid, name: row.name, title: row.title, publisher: row.publisher, description: row.description, experimental: row.experimental, purpose: row.purpose, author: row.author}) ) }}"
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    runWhenModelUpdates={false}
    tableName="concept_maps.concept_map"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="load_concept_map_version_metadata"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="save_versions_table_changes"
    actionType="BULK_UPDATE_BY_KEY"
    bulkUpdatePrimaryKey="uuid"
    editorMode="gui"
    records="{{versions_table.recordUpdates.map(row => ({uuid: row.uuid, effective_start: row.effective_start, effective_end: row.effective_end, status: row.status, description: row.description, comments: row.comments}) ) }}"
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    runWhenModelUpdates={false}
    tableName="concept_maps.concept_map_version"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="select_concept_map_version"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="select_concept_map_version"
    query={include("./lib/select_concept_map_version.sql", "string")}
    queryTimeout="10001"
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    triggersOnFailure={null}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="tpm_report_builder"
    enableTransformer={true}
    query={include("./lib/tpm_report_builder.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    runWhenModelUpdates={false}
    transformer="return formatDataAsArray(data).map(row => ({source_code:row.sc_code, source_display:row.sc_display, source_abreviations:row.abreviations, relationship_code:row.rc_code, target_display: row.target_concept_display, comments: row.mapping_comments}))"
    warningCodes={[]}
  >
    <Event
      event="success"
      method="exportData"
      params={{
        ordered: [
          { fileType: "xlsx" },
          {
            fileName:
              "{{metadata_key_table.data.title}} Version {{versions_table.selectedRow.data.version}}",
          },
          { data: "{{tpm_report_builder.data}}" },
          { options: { ordered: [{ sheetName: "concept_map" }] } },
        ],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
</GlobalFunctions>
