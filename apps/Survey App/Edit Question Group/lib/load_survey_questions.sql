select * from surveys.question_group_members
join surveys.question
on surveys.question_group_members.question_uuid = surveys.question.question_uuid
where question_group_uuid = {{urlparams.uuid}}
order by position asc 