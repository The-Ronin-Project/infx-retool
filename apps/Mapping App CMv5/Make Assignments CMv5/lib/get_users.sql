select * from project_management.user
where uuid not in (
  '70b5405d-b2ab-481b-85a5-d5b305164851',
  '8990714d-8eeb-4acf-a5b7-abf92007a53a',
  '8abf5747-121b-48e0-9edf-dbd820d397fb'
)
order by first_name