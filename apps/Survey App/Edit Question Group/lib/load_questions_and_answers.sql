select *, x.answer_uuid from
(select *, unnest(specific_answer_uuids) as answer_uuid from surveys.question_group_members
join surveys.question
on surveys.question_group_members.question_uuid = surveys.question.question_uuid
where question_group_uuid = {{urlparams.uuid}}
order by position asc) as x
join surveys.specific_answer
on x.answer_uuid=specific_answer_uuid
left join surveys.branching_logic bl
on x.answer_uuid = bl.answer_uuid
and x.question_group_uuid = bl.question_group_uuid
order by position asc, clinical_severity_order asc