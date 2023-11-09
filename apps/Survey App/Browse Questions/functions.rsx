<GlobalFunctions>
  <SqlQueryUnified
    id="load_questions"
    query={include("./lib/load_questions.sql", "string")}
    queryTimeout="10001"
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    triggersOnFailure={null}
    warningCodes={[]}
  />
</GlobalFunctions>
