select * from value_sets.expansion_member
where expansion_uuid in
(select uuid from value_sets.expansion
 where vs_version_uuid={{urlparams.uuid}}
order by timestamp DESC
limit 1)
order by code