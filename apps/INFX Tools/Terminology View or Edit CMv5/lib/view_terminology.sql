select * from public.terminology_versions
join custom_terminologies.code_data 
on terminology_versions.uuid = code_data.terminology_version_uuid
left join custom_terminologies.code_depends_on cdo
on code_data.uuid = cdo.code_uuid
where terminology_versions.uuid = {{urlparams.uuid}}