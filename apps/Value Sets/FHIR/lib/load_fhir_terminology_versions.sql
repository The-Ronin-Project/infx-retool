SELECT *
FROM public.terminology_versions
WHERE fhir_uri = {{select_fhir_system.value}}