update concept_maps.concept_map_version
SET published_date = (now())
where uuid = {{urlparams.uuid}}
AND status = 'active'