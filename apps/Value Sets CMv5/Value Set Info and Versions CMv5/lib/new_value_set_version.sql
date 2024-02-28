INSERT INTO value_sets.value_set_version (
  value_set_uuid, 
  effective_start, 
  effective_end, 
  description, 
  version, 
  uuid, 
  status
) 
VALUES (
  {{urlparams.uuid}},
  {{effective_dates.startValue}},
  {{effective_dates.endValue}},
  {{textinput2.value}},
  {{value_set_versions.data.version[0]+1}},
  {{textInput4.value}},
  'pending'
  );
