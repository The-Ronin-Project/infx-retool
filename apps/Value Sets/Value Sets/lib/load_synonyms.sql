select context, synonym, uuid
from resource_synonyms
where resource_uuid={{vs_metadata_table.selectedRow.data.uuid}}