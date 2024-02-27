UPDATE concept_maps.concept_map
SET 
  name = {{edit_metadata.recordUpdates[0].name}},
  title = {{edit_metadata.recordUpdates[0].title}},
  publisher = {{edit_metadata.recordUpdates[0].publisher}},
  description =   {{edit_metadata.recordUpdates[0].description}},
  experimental = {{edit_metadata.recordUpdates[0].experimental}},
  purpose = {{edit_metadata.recordUpdates[0].purpose}},
  author = {{edit_metadata.recordUpdates[0].author}}
WHERE uuid = {{edit_metadata.recordUpdates[0].uuid}}
  