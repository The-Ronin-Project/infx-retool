SELECT version, terminology, uuid, effective_start, effective_end FROM public.terminology_versions
WHERE fhir_uri = {{terminology_select.value}}
ORDER BY version DESC;
