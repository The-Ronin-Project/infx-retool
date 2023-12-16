<GlobalFunctions>
  <Folder id="ready_for_review_tab">
    <SqlQueryUnified
      id="additional_modal"
      resourceDisplayName="Clinical Content PostgresSQL DB"
      resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    />
    <SqlQueryUnified
      id="approve_all_query_part1"
      query={include("./lib/approve_all_query_part1.sql", "string")}
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
        method="clearValue"
        params={{ ordered: [] }}
        pluginId="review_comment_all"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="get_current_user_uuid"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="approve_all_query_part2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="approve_all_query_part2"
      query={include("./lib/approve_all_query_part2.sql", "string")}
      resourceDisplayName="Clinical Content PostgresSQL DB"
      resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
      runWhenModelUpdates={false}
      successMessage="Concepts are approved!"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="set_user_as_assigned_reviewer"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="clearValue"
        params={{ ordered: [] }}
        pluginId="review_comment_all"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="selectRow"
        params={{ ordered: [] }}
        pluginId="review_queue"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="populate_review_queue"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="disapprove_all_query_part1"
      query={include("./lib/disapprove_all_query_part1.sql", "string")}
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
        pluginId="get_current_user_uuid"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="clearValue"
        params={{ ordered: [] }}
        pluginId="review_comment_all"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="set_user_as_assigned_reviewer"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="disapprove_all_query_part2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="disapprove_all_query_part2"
      query={include("./lib/disapprove_all_query_part2.sql", "string")}
      resourceDisplayName="Clinical Content PostgresSQL DB"
      resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
      runWhenModelUpdates={false}
      successMessage="Concepts have been rejected!"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="set_user_as_assigned_reviewer"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="selectRow"
        params={{ ordered: [] }}
        pluginId="review_queue"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="clearValue"
        params={{ ordered: [] }}
        pluginId="review_comment_all"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="populate_review_queue"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="getMappingGroups"
      query={include("./lib/getMappingGroups.sql", "string")}
      resourceDisplayName="Clinical Content PostgresSQL DB"
      resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="getUsers_reviewer"
      query={include("./lib/getUsers_reviewer.sql", "string")}
      resourceDisplayName="Clinical Content PostgresSQL DB"
      resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
      resourceTypeOverride=""
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="get_current_user_uuid"
      query={include("./lib/get_current_user_uuid.sql", "string")}
      resourceDisplayName="Clinical Content PostgresSQL DB"
      resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
      transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="get_users_to_assign"
      query={include("./lib/get_users_to_assign.sql", "string")}
      resourceDisplayName="Clinical Content PostgresSQL DB"
      resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
      resourceTypeOverride=""
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="populate_review_queue"
      query={include("./lib/populate_review_queue.sql", "string")}
      queryTimeout="10001"
      resourceDisplayName="Clinical Content PostgresSQL DB"
      resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
      runWhenModelUpdates={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="ready_for_review_but_unassigned"
      query={include("./lib/ready_for_review_but_unassigned.sql", "string")}
      resourceDisplayName="Clinical Content PostgresSQL DB"
      resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="save_all_for_discussion"
      query={include("./lib/save_all_for_discussion.sql", "string")}
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
        pluginId="save_all_for_discussion2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="save_all_for_discussion2"
      query={include("./lib/save_all_for_discussion2.sql", "string")}
      resourceDisplayName="Clinical Content PostgresSQL DB"
      resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
      runWhenModelUpdates={false}
      successMessage="Concepts saved for discussion."
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="update_reviewer_assignment"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="clearValue"
        params={{ ordered: [] }}
        pluginId="review_comment_all"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="populate_review_queue"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="set_user_as_assigned_reviewer"
      query={include("./lib/set_user_as_assigned_reviewer.sql", "string")}
      resourceDisplayName="Clinical Content PostgresSQL DB"
      resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
    />
    <Function
      id="transformerHasNoMap"
      funcBody={include("./lib/transformerHasNoMap.js", "string")}
    />
    <RESTQuery
      id="update_relationship"
      body={
        '[{"key":"mapping_uuid","value":"{{review_queue.selectedRow.data.map(x=>x.mapping_uuid)}}"},{"key":"new_relationship_code_uuid","value":"{{relationship_splitButton.selectedItem.caption}}"}]'
      }
      bodyType="json"
      query="/ConceptMaps/update/mapping_relationships"
      resourceDisplayName="INFX Internal Tools API"
      resourceName="a00335cd-bd3b-4d98-8af4-7ff590ce95e8"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      successMessage="Relationship updated."
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      type="PATCH"
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="populate_review_queue"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="selectRow"
        params={{ ordered: [] }}
        pluginId="review_queue"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </RESTQuery>
    <SqlQueryUnified
      id="update_reviewer_assignment"
      query={include("./lib/update_reviewer_assignment.sql", "string")}
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
        pluginId="populate_review_queue"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getUsers_reviewer"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="selectRow"
        params={{ ordered: [] }}
        pluginId="review_queue"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
  </Folder>
  <Folder id="concepts_for_discussion">
    <SqlQueryUnified
      id="approve_discussion"
      query={include("./lib/approve_discussion.sql", "string")}
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
        pluginId="approve_discussion2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="discussion_concepts"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="approve_discussion2"
      query={include("./lib/approve_discussion2.sql", "string")}
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
        pluginId="discussion_concepts"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="discussion_concepts"
      query={include("./lib/discussion_concepts.sql", "string")}
      resourceDisplayName="Clinical Content PostgresSQL DB"
      resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="discussion_return_to_mapper"
      query={include("./lib/discussion_return_to_mapper.sql", "string")}
      resourceDisplayName="Clinical Content PostgresSQL DB"
      resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="reject_discussion"
      query={include("./lib/reject_discussion.sql", "string")}
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
        pluginId="reject_discussion2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="discussion_concepts"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="reject_discussion2"
      query={include("./lib/reject_discussion2.sql", "string")}
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
        pluginId="discussion_concepts"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
  </Folder>
  <SqlQueryUnified
    id="detailed_source"
    query={include("./lib/detailed_source.sql", "string")}
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
      method="open"
      params={{ ordered: [] }}
      pluginId="modal1"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <RESTQuery
    id="getInfo"
    importedQueryInputs={{
      ordered: [
        {
          variable0:
            "{{review_queue.selectedRow.data['0'].target_concept_code}}",
        },
      ],
    }}
    isImported={true}
    playgroundQueryId={59}
    playgroundQueryName="getInfoBeforeMapping"
    playgroundQueryUuid="47e519ee-fd78-4d58-9b17-5a5e00c3c3e6"
    query="RxTerms/rxcui/{{ variable0 }}/allinfo.json"
    resourceDisplayName="RxNormAPI"
    resourceName="0df79934-c6a7-406a-be20-768097ceac19"
    retoolVersion="2.95.3"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data['rxtermProperties']"
  />
  <SqlQueryUnified
    id="getUsers_mapper"
    query={include("./lib/getUsers_mapper.sql", "string")}
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
    id="get_author"
    query={include("./lib/get_author.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    warningCodes={[]}
  />
</GlobalFunctions>
