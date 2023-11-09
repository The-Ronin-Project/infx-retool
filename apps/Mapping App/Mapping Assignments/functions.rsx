<GlobalFunctions>
  <Folder id="count_queries">
    <SqlQueryUnified
      id="assigned_count"
      query={include("./lib/assigned_count.sql", "string")}
      resourceDisplayName="Clinical Content PostgresSQL DB"
      resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="authored_count"
      enableTransformer={true}
      query={include("./lib/authored_count.sql", "string")}
      resourceDisplayName="Clinical Content PostgresSQL DB"
      resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
      transformer="const input = formatDataAsArray(data);
const output = input.reduce((obj, item) => {
    obj[item.author] = item.count;
    return obj;
}, {});

return output;"
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="mapper_assignment_counts"
      query={include("./lib/mapper_assignment_counts.sql", "string")}
      resourceDisplayName="Clinical Content PostgresSQL DB"
      resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="mapper_mapped_count"
      enableTransformer={true}
      query={include("./lib/mapper_mapped_count.sql", "string")}
      resourceDisplayName="Clinical Content PostgresSQL DB"
      resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
      transformer="const input = formatDataAsArray(data);
const output = input.reduce((obj, item) => {
    obj[item.first_last_name] = item.count;
    return obj;
}, {});

return output;
"
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="mapper_unmapped_count"
      enableTransformer={true}
      query={include("./lib/mapper_unmapped_count.sql", "string")}
      resourceDisplayName="Clinical Content PostgresSQL DB"
      resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
      transformer="const input = formatDataAsArray(data);
const output = input.reduce((obj, item) => {
    obj[item.first_last_name] = item.count;
    return obj;
}, {});

return output;"
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="review_count_query"
      query={include("./lib/review_count_query.sql", "string")}
      resourceDisplayName="Clinical Content PostgresSQL DB"
      resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="reviewed_by_count"
      enableTransformer={true}
      query={include("./lib/reviewed_by_count.sql", "string")}
      resourceDisplayName="Clinical Content PostgresSQL DB"
      resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
      transformer="const input = formatDataAsArray(data);
const output = input.reduce((obj, item) => {
    obj[item.reviewed_by] = item.count;
    return obj;
}, {});

return output;"
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="reviewer_assignment_counts"
      query={include("./lib/reviewer_assignment_counts.sql", "string")}
      resourceDisplayName="Clinical Content PostgresSQL DB"
      resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="reviewer_reviewed_count"
      enableTransformer={true}
      query={include("./lib/reviewer_reviewed_count.sql", "string")}
      resourceDisplayName="Clinical Content PostgresSQL DB"
      resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
      transformer="const input = formatDataAsArray(data);
const output = input.reduce((obj, item) => {
    obj[item.first_last_name] = item.count;
    return obj;
}, {});

return output;"
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="reviewer_to_do_count"
      enableTransformer={true}
      query={include("./lib/reviewer_to_do_count.sql", "string")}
      resourceDisplayName="Clinical Content PostgresSQL DB"
      resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
      transformer="const input = formatDataAsArray(data);
const output = input.reduce((obj, item) => {
    obj[item.first_last_name] = item.count;
    return obj;
}, {});

return output;"
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="total_concepts"
      query={include("./lib/total_concepts.sql", "string")}
      resourceDisplayName="Clinical Content PostgresSQL DB"
      resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="unassigned_count"
      query={include("./lib/unassigned_count.sql", "string")}
      resourceDisplayName="Clinical Content PostgresSQL DB"
      resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
    />
  </Folder>
  <SqlQueryUnified
    id="assign_count_by_user"
    query={include("./lib/assign_count_by_user.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="count_mapped"
    query={include("./lib/count_mapped.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="group_count_and_assignee"
    query={include("./lib/group_count_and_assignee.sql", "string")}
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
    id="make_assignment_display_match"
    query={include("./lib/make_assignment_display_match.sql", "string")}
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
      pluginId="assigned_count"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="mapper_assignment_counts"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="reviewer_assignment_counts"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="group_count_and_assignee"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="review_count_query"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="unassigned_count"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="make_assignment_random"
    query={include("./lib/make_assignment_random.sql", "string")}
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
      pluginId="assigned_count"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="mapper_assignment_counts"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="reviewer_assignment_counts"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="group_count_and_assignee"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="unassigned_count"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="review_count_query"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="make_reviewer_assignment"
    query={include("./lib/make_reviewer_assignment.sql", "string")}
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
      method="showNotification"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                { notificationType: "success" },
                { title: "Success" },
                { description: "Assignment complete!" },
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
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="reviewer_assignment_counts"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="group_count_and_assignee"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="review_count_query"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="clearValue"
      params={{ ordered: [] }}
      pluginId="select_reviewer"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="map_assignment_count"
    query={include("./lib/map_assignment_count.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="mapper_reassignment"
    query={include("./lib/mapper_reassignment.sql", "string")}
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
      method="showNotification"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                { notificationType: "success" },
                { title: "Success" },
                { description: "Assignment complete!" },
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
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="assigned_count"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="group_count_and_assignee"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="mapper_assignment_counts"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="unassigned_count"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="clearValue"
      params={{ ordered: [] }}
      pluginId="select_mapper"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="no_assigned_reviewer"
    query={include("./lib/no_assigned_reviewer.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="project_metadata"
    importedQueryInputs={{
      ordered: [{ variable0: "{{ urlparams.concept_map_version_uuid }}" }],
    }}
    isImported={true}
    playgroundQueryId={56}
    playgroundQueryUuid="cdbb3eca-175f-4e0a-9c90-36c767ad88c4"
    query={include("./lib/project_metadata.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    retoolVersion="2.95.3"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="query_count_total"
    query={include("./lib/query_count_total.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="query_count_unassigned"
    query={include("./lib/query_count_unassigned.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="review_count_by_user"
    query={include("./lib/review_count_by_user.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="review_display_match"
    query={include("./lib/review_display_match.sql", "string")}
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
      pluginId="group_count_and_assignee"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="review_random"
    query={include("./lib/review_random.sql", "string")}
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
      pluginId="review_count_by_user"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="timestamp"
    query={include("./lib/timestamp.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <Function
    id="transform_query"
    funcBody={include("./lib/transform_query.js", "string")}
  />
  <SqlQueryUnified
    id="unassign_mapper"
    query={include("./lib/unassign_mapper.sql", "string")}
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
      pluginId="group_count_and_assignee"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="reviewer_assignment_counts"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="mapper_assignment_counts"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="assigned_count"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="unassigned_count"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="review_count_query"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="unassign_reviewer"
    query={include("./lib/unassign_reviewer.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="unmapped_count"
    query={include("./lib/unmapped_count.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="user_options"
    query={include("./lib/user_options.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="user_to_map_count"
    query={include("./lib/user_to_map_count.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
</GlobalFunctions>
