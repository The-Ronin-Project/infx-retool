SELECT * 
FROM value_sets.expansion_member_data 
WHERE expansion_uuid = {{load_expansion_uuid.data.uuid[0]}}
ORDER BY code_simple