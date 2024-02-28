select distinct code_schema, code_simple, code_jsonb, display from value_sets.expansion_member_data
where expansion_uuid = {{left_exp_sel.value}}
EXCEPT
select distinct code_schema, code_simple, code_jsonb, display from value_sets.expansion_member_data
where expansion_uuid = {{right_exp_sel.value}}
order by display asc