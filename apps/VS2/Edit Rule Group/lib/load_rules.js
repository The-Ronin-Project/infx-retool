return {
    title: "Breast Cancer (SNOMED)",
    description: "SNOMED codes for breast cancer",
    code_stats: [{
      terminology: "SNOMED CT 2022-09-01",
      count: 2456
    }, {
      terminology: "LOINC 2.73",
      count: 323
    }],
    include: true,
    rules: [
      {
        description: "Breast cancer",
        property: "ecl",
        operator: "=",
        value: "<64572001 |Disease (disorder)|: {<<116676008 |Associated morphology (attribute)| = <<108369006 |Neoplasm (morphologic abnormality)| AND <<363698007 |Finding site (attribute)| = <<76752008 |Breast structure (body structure)|}",
        terminology_version: ["SNOMED CT 2022-09-01"],
        include_exclude: "Includes 6,340 codes"
      },
      {
        description: "Exclude breast implant lymphoma",
        property: "ecl",
        operator: "=",
        value: "<<783541009 |Breast implant–associated anaplastic large-cell lymphoma (disorder)|",
        terminology_version: ["SNOMED CT 2022-09-01"],
        include_exclude: "Excludes 345 codes"
      }
    ]
  }