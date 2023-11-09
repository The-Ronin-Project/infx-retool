<GlobalFunctions>
  <Folder id="Concept_map_assignment">
    <SqlQueryUnified
      id="Mapper_count"
      query={include("./lib/Mapper_count.sql", "string")}
      resourceDisplayName="Clinical Content PostgresSQL DB"
      resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
    />
  </Folder>
  <Folder id="value_set_assignment">
    <SqlQueryUnified
      id="value_set_assignment"
      query={include("./lib/value_set_assignment.sql", "string")}
      resourceDisplayName="Clinical Content PostgresSQL DB"
      resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      warningCodes={[]}
    />
  </Folder>
  <SqlQueryUnified
    id="Select_team_mate"
    query={include("./lib/Select_team_mate.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
</GlobalFunctions>
