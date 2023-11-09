<App>
  <Include src="./functions.rsx" />
  <Include src="./header.rsx" />
  <TableLegacy
    id="unmapped_concepts"
    _columnVisibility={{
      ordered: [
        { uuid: false },
        { system: false },
        { comments: false },
        { additional_context: false },
        { concept_map_version_uuid: false },
      ],
    }}
    _compatibilityMode={false}
    columnColors={{
      ordered: [
        { display: "" },
        { code: "" },
        { mapping_group: "" },
        { system: "" },
        { reason_for_no_map: "" },
        { assigned_mapper: "" },
        { comments: "" },
        { map_status: "" },
        { assigned_reviewer: "" },
        { additional_context: "" },
        { uuid: "" },
        { concept_map_version_uuid: "" },
        { resource_count: "" },
        { no_map: "" },
      ],
    }}
    columnHeaderNames={{
      ordered: [
        { code: "Source Code" },
        { display: "Source Display" },
        { map_status: "map status" },
        { assigned_mapper: "Mapper" },
        { assigned_reviewer: "Reviewer" },
        { no_map: "no-map" },
      ],
    }}
    customButtonName=""
    data="{{get_unmapped.data}}"
    doubleClickToEdit={true}
    overflowType="scroll"
    showBoxShadow={false}
    showPaginationOnTop={true}
  />
</App>
