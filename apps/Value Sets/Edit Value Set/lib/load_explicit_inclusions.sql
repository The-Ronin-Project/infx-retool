select code, display, terminology, version, review_status from value_sets.explicitly_included_code
join custom_terminologies.code 
on code.uuid = code_uuid
join public.terminology_versions tv
on tv.uuid = terminology_version_uuid
where vs_version_uuid={{urlparams.uuid}}