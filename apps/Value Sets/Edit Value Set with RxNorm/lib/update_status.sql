update value_sets.value_set_version
set status={{status_select.value}},
comments='Status updated to ' || {{status_select.value}} || ' by ' || {{current_user.fullName}} || ' on ' || {{moment().format("MMMM Do YYYY, h:mm:ss a")}}
where uuid={{urlparams.uuid}}