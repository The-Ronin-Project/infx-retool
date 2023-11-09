update value_sets.value_set
set name={{name_edit.value.toLowerCase().replace(/[^\w]+/g, '')}}
where uuid={{urlparams.uuid}}