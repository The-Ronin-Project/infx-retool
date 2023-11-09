select org.uuid, concat(org.name, ' (', org2.name,')') org_name from organizations.organizations org
left join organizations.hierarchy hier
on hier.target_organization_uuid=org.uuid
left join organizations.organizations org2
on hier.source_organization_uuid=org2.uuid