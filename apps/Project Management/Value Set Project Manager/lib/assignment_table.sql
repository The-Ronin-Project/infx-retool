select pm1.first_last_name reviewer_name, 
pm2.first_last_name assigned_to_name, 
pm3.first_last_name assignment_back_up_name,
vs.title, pm.*, vsversion.* from project_management.value_set_assignment as pm
full outer join value_sets.value_set_version as vsversion
on pm.value_set_version_uuid=vsversion.uuid
full outer join value_sets.value_set as vs
on vs.uuid=vsversion.value_set_uuid
full outer join project_management.user as pm1
on pm.reviewer=pm1.uuid
full outer join project_management.user as pm2
on pm.assigned_to=pm2.uuid
full outer join project_management.user as pm3
on pm.assignment_back_up=pm3.uuid
where (pm.assigned_to={{assignee_select.value}} and {{primary_checkbox.value}} 
       and status='in progress')
or (pm.assignment_back_up={{assignee_select.value}} and {{backup_checkbox.value}}
    and status='in progress')
or (pm.reviewer={{assignee_select.value}} and {{review_checkbox.value}}
    and status='ready for review')
