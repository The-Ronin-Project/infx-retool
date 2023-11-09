select uuid from value_sets.value_set_version
where value_set_uuid={{urlparams.uuid}}
order by effective_end DESC
limit 1