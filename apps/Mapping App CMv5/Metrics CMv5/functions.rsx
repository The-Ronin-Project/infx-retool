<GlobalFunctions>
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
    id="discussion_count"
    query={include("./lib/discussion_count.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
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
  
return output; "
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
    id="nomap_count"
    query={include("./lib/nomap_count.sql", "string")}
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
    id="reviewer_unreviewed_count"
    enableTransformer={true}
    query={include("./lib/reviewer_unreviewed_count.sql", "string")}
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
    id="total_count"
    query={include("./lib/total_count.sql", "string")}
    resourceDisplayName="Clinical Content PostgresSQL DB"
    resourceName="dc8029bc-3980-4836-841e-776c64eeca49"
    resourceTypeOverride=""
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
</GlobalFunctions>
