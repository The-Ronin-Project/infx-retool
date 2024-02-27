WITH
-- Get the source_value_set_uuid from the selected row in 'metadata_table'
source_value_set_uuid AS (
  SELECT source_value_set_uuid
  FROM concept_maps.concept_map
  WHERE uuid = {{ metadata_table.selectedRow.data.uuid }}::uuid
),
-- Get the active version of that value set
active_version_uuid AS (
  SELECT uuid
  FROM value_sets.value_set_version
  WHERE value_set_uuid = (SELECT source_value_set_uuid FROM source_value_set_uuid)
    AND status = 'active'
),
-- Get the terminology UUID from that value set's rules
terminology_version_uuid AS (
  SELECT terminology_version
  FROM value_sets.value_set_rule
  WHERE value_set_version = (SELECT uuid FROM active_version_uuid)
  LIMIT 1
)
-- Display the fhir_uri from that terminology
SELECT fhir_uri
FROM public.terminology_versions
WHERE uuid = (SELECT terminology_version FROM terminology_version_uuid);
