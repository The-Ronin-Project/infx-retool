select * from concept_maps.concept_relationship as cr
join(select code as sc_code, display as sc_display, concept_map_version_uuid as cmv_uuid from concept_maps.source_concept) as sc on cr.concept_map_version_uuid = sc.cmv_uuid
join(select code as em_code, expansion_uuid as em_ex_uuid from value_sets.expansion_member) as em on cr.target_concept_code = em.em_code
join(select uuid as ex_uuid, vs_version_uuid as ex_vsv_uuid from value_sets.expansion) as ex on em.em_ex_uuid = ex.ex_uuid
join(select uuid as vsv_uuid, value_set_uuid as vs_uuid from value_sets.value_set_version) as vsv on ex.ex_vsv_uuid = vsv.vsv_uuid
join(select uuid as vs_uuid, value_set.title as vs_title from value_sets.value_set) as vs on vsv.vs_uuid = vs.vs_uuid
where cr.concept_map_version_uuid = {{versions_table.selectedRow.data.uuid}}