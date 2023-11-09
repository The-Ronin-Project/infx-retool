select distinct "relationshipCode"
from "scrappyMaps".map_table
where "mapsetName" = {{concept_map_select.value}}