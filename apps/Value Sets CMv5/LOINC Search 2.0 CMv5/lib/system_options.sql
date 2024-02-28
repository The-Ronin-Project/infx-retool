select distinct system from loinc.code
where component = any({{component_select.value}})
and terminology_version_uuid={{loinc_version_select.value}}
order by system