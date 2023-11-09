select uuid from project_management.user
where first_last_name = {{current_user.fullName}}