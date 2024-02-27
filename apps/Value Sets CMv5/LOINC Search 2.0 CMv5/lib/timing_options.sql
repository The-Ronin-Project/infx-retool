select distinct time_aspct from loinc.code
where component = any({{component_select.value}})
and terminology_version_uuid={{loinc_version_select.value}}
order by time_aspct