insert into value_sets.explicitly_included_code
(uuid, vs_version_uuid, code_uuid, review_status)
VALUES
({{uuid.v4()}}, {{urlparams.uuid}}, {{code_uuid.value}}, 'pending')