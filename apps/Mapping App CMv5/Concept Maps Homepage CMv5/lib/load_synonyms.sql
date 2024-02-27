select context, synonym, uuid
from resource_synonyms
where resource_uuid={{concept_map_metadata_table.selectedRow.data.uuid}}