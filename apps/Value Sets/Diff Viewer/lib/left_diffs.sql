select distinct code, display from value_sets.expansion_member
where expansion_uuid = {{left_exp_sel.value}}
EXCEPT
select distinct code, display from value_sets.expansion_member
where expansion_uuid = {{right_exp_sel.value}}
order by display asc