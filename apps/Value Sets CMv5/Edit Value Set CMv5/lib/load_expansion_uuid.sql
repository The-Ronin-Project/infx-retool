select uuid from value_sets.expansion
 where vs_version_uuid={{urlparams.uuid}}
order by timestamp DESC
limit 1