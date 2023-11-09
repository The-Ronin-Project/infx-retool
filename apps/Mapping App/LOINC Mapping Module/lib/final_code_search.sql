select * from loinc.code
where component = any({{component_select.value}})
and time_aspct = any({{timing_select.value}})
and property = any({{property_select.value}})
and scale_typ = any({{scale_select.value}})
and system = any({{system_select.value}})
and method_typ = any({{method_select.value}})
and status = 'ACTIVE'
and terminology_version_uuid={{loinc_version_select.value}}
order by long_common_name