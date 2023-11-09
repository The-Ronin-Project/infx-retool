select * from public.terminology_versions
join custom_terminologies.code on terminology_versions.uuid = code.terminology_version_uuid
where terminology_versions.uuid = {{urlparams.uuid}}