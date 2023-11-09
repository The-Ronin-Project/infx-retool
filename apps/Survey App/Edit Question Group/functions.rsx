<GlobalFunctions>
  <SqlQueryUnified
    id="add_question_to_question_group"
    allowedGroups={["Clinical Intelligence Admin", "INFX"]}
    query={include("./lib/add_question_to_question_group.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    runWhenModelUpdates={false}
    showSuccessConfetti={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    triggersOnFailure={[]}
    triggersOnSuccess={["load_survey_questions", "max_position_survey"]}
    warningCodes={[]}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="load_survey_questions"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="max_position_survey"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="bulkUpdateQuestionOrder"
    actionType="BULK_UPDATE_BY_KEY"
    allowedGroups={["Clinical Intelligence Admin", "INFX"]}
    bulkUpdatePrimaryKey="uuid"
    editorMode="gui"
    records={
      '{{table1.recordUpdates.map(row => _.pick(row, ["uuid","position"]) ) }}'
    }
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    runWhenModelUpdates={false}
    showSuccessConfetti={false}
    showUpdateSetValueDynamicallyToggle={false}
    tableName="surveys.question_group_members"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    triggersOnFailure={[]}
    triggersOnSuccess={["load_survey_questions", "max_position_survey"]}
    updateSetValueDynamically={true}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="load_survey_questions"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="max_position_survey"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="delete_from_question_group"
    allowedGroups={["Clinical Intelligence Admin", "INFX"]}
    confirmationMessage="Removing this question from the question group will remove it from every survey that uses this question group. Are you sure you want to do this?"
    query={include("./lib/delete_from_question_group.sql", "string")}
    requireConfirmation={true}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    runWhenModelUpdates={false}
    showSuccessConfetti={false}
    showUpdateSetValueDynamicallyToggle={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    triggersOnFailure={[]}
    triggersOnSuccess={["load_survey_questions", "max_position_survey"]}
    updateSetValueDynamically={true}
    warningCodes={[]}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="load_survey_questions"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="max_position_survey"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="load_questions_and_answers"
    query={include("./lib/load_questions_and_answers.sql", "string")}
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
    id="load_survey_questions"
    query={include("./lib/load_survey_questions.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    retoolVersion="2.70.21"
    showSuccessConfetti={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    triggersOnFailure={[]}
    triggersOnSuccess={[]}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="max_position_survey"
    query={include("./lib/max_position_survey.sql", "string")}
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
  <ElasticSearchQuery
    id="question_search"
    importedQueryInputs={{
      ordered: [
        { variable0: "{{search_field.value}}" },
        { variable1: "{{question_search_results.pageSize}}" },
        { variable2: "{{question_search_results.paginationOffset}}" },
      ],
    }}
    isImported={true}
    playgroundQueryId={20}
    playgroundQueryName="question_search"
    playgroundQuerySaveId={29}
    playgroundQueryUuid="d5c467ef-07a8-4a6b-a970-17383c294faf"
    query={include("./lib/question_search.json5", "string")}
    resourceDisplayName="ElasticSearch"
    resourceName="3e68115b-9776-4956-86b4-f468d2d1f836"
    retoolVersion="2.70.21"
    showSuccessConfetti={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    triggersOnFailure={[]}
    triggersOnSuccess={[]}
  />
  <SqlQueryUnified
    id="update_branching_logic"
    query={include("./lib/update_branching_logic.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    runWhenModelUpdates={false}
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
</GlobalFunctions>
