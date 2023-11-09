<GlobalFunctions>
  <SqlQueryUnified
    id="load_metadata"
    query={include("./lib/load_metadata.sql", "string")}
    queryTimeout="10001"
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <RESTQuery
    id="publish_concept_map"
    bodyType="json"
    confirmationMessage="## Publishing is Permanent

##### You are about to publish **{{load_metadata.data.title}}** version **{{load_metadata.data.version}}**

Once published, a concept map can only be updated by creating a new version."
    query="ConceptMaps/{{ urlparams.concept_map_version_uuid }}/published"
    requireConfirmation={true}
    resourceDisplayName="INFX Internal Tools API"
    resourceName="a00335cd-bd3b-4d98-8af4-7ff590ce95e8"
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    type="POST"
  />
</GlobalFunctions>
