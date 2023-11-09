select qgm.question_uuid, question_text, qg.title question_group, sa.generic_answer_display, sa.clinical_severity_order, sa.alert_tier default_alert_tier, altr.alert_tier override_alert_tier
from surveys.survey_question_group_link sqgl
join surveys.question_group_members qgm
on qgm.question_group_uuid = sqgl.question_group_uuid
join surveys.question
on question.question_uuid = qgm.question_uuid
join surveys.question_group qg
on qg.uuid = qgm.question_group_uuid
join surveys.specific_answer sa
on sa.specific_answer_uuid = any(question.specific_answer_uuids)
left join surveys.alert_tiers altr
on sa.specific_answer_uuid = altr.specific_answer_uuid
and altr.organization_uuid = {{org_select.value}}
and altr.survey_uuid={{survey_select.value}}
where sqgl.survey_uuid={{survey_select.value}}
order by sqgl.position, qgm.position, sa.clinical_severity_order