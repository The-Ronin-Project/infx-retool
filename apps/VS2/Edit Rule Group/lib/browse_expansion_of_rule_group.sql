select * from value_sets_new.expanision_member em
join value_sets_new.expansion ex on em.expansion_uuid = ex.uuid
where vs_version_uuid = {{urlparams}}