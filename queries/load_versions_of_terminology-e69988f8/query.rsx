<PlaygroundQuery
  id="load_versions_of_terminology"
  adhocResourceType={null}
  data={null}
  resourceType="postgresql"
>
  <SqlQuery
    actionType=""
    allowedGroups={[]}
    bulkUpdatePrimaryKey=""
    dataArray={[]}
    doNotThrowOnNoOp={false}
    editorMode="sql"
    enableBulkUpdates={false}
    events={[]}
    filterBy=""
    importedQueryDefaults={{ terminology: "LOINC" }}
    importedQueryInputs={{ terminology: "" }}
    privateParams={[]}
    query={include("./lib/load_versions_of_terminology.sql", "string")}
    recordId=""
    records=""
    retoolVersion="2.80.16"
    tableName=""
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
    watchedParams={[]}
  />
</PlaygroundQuery>
