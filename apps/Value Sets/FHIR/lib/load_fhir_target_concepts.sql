SELECT * 
FROM fhir_defined_terminologies.code_systems_new
WHERE terminology_version_uuid = {{select_fhir_version.value}}