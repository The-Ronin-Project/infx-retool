update concept_maps.source_concept
set assigned_mapper={{mapper_select3.value}}, assigned_reviewer={{reviewer_select3.value}},
mapping_group={{"random " + (new Date().toString())}}
where uuid = any({{random_preview_table.data.uuid}})