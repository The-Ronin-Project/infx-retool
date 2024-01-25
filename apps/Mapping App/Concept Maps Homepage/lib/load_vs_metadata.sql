select vs.description vs_description, vsv.description vsv_description, *
from value_sets.value_set_version vsv
join value_sets.value_set vs
on vsv.value_set_uuid = vs.uuid
where vsv.uuid={{version_select.value}}