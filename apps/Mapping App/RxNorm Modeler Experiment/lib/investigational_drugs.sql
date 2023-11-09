select display from concept_maps.source_concept
where display like '%inv%'
and code is null
and system = 'fc98b31d-c83e-48c0-be96-2d55661219af'
limit 100