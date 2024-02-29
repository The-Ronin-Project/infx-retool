SELECT COUNT(*) as count
FROM public.terminology_versions
WHERE version = {{version.value}} AND fhir_uri = {{fhir_uri.value}}
