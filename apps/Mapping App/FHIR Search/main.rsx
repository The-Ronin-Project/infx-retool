<App>
  <Include src="./functions.rsx" />
  <Frame id="$main" type="main">
    <ModuleContainerWidget
      id="moduleContainer"
      backgroundColor="white"
      isGlobalWidgetContainer={true}
      style={{ ordered: [] }}
    >
      <Select
        id="fhir_system_select"
        allowDeselect={true}
        captionByIndex=""
        colorByIndex=""
        data="{{ load_fhir_terminologies.data.terminology}}"
        disabledByIndex=""
        fallbackTextByIndex=""
        hiddenByIndex=""
        iconByIndex=""
        imageByIndex=""
        label="FHIR System"
        labels=""
        overlayMaxHeight={375}
        placeholder="Select an option"
        showSelectionIndicator={true}
        tooltipByIndex=""
        values="{{ item }}"
      />
      <Select
        id="fhir_version_select"
        allowDeselect={true}
        data="{{load_fhir_terminology_versions.data}}"
        label="Verison"
        labels="{{item.version}}"
        overlayMaxHeight={375}
        placeholder="Select an option"
        showSelectionIndicator={true}
        value="{{ load_fhir_terminology_versions.data.version[0] }}"
        values="{{item.uuid}}"
      >
        <Option id="ccc87" value="Option 1" />
        <Option id="82304" value="Option 2" />
        <Option id="57ca1" value="Option 3" />
        <Event
          event="change"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="load_fhir_target_concepts"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Select>
      <TableLegacy
        id="fhir_table"
        _columns={[
          "uuid",
          "code",
          "Custom Column 1",
          "display",
          "definition",
          "comments",
          "terminology_version_uuid",
        ]}
        _columnSummaryTypes={{ ordered: [{ "Custom Column 1": "" }] }}
        _columnSummaryValues={{ ordered: [{ "Custom Column 1": "" }] }}
        _columnVisibility={{
          ordered: [
            { id: true },
            { name: true },
            { email: true },
            { sales: true },
            { uuid: false },
            { code: false },
            { terminology_version_uuid: false },
            { comments: false },
          ],
        }}
        _compatibilityMode={false}
        applyDynamicSettingsToColumnOrder={false}
        calculatedColumns={["Custom Column 1"]}
        columnAlignment={{ ordered: [{ "Custom Column 1": "left" }] }}
        columnColors={{
          ordered: [
            { display: "" },
            { name: "" },
            { sales: "" },
            { code: "" },
            { terminology_version_uuid: "" },
            { definition: "" },
            { comments: "" },
            { "Custom Column 1": "" },
            { id: "" },
            { uuid: "" },
            { email: "" },
          ],
        }}
        columnEditable={{ ordered: [{ "Custom Column 1": false }] }}
        columnFormats={{ ordered: [{ "Custom Column 1": "ModalDataCell" }] }}
        columnHeaderNames={{
          ordered: [{ "Custom Column 1": "More Information" }],
        }}
        columnMappers={{ ordered: [{ "Custom Column 1": "More Info" }] }}
        columns={["id", "name", "email", "sales"]}
        columnTypeProperties={{
          ordered: [{ "Custom Column 1": { ordered: [] } }],
        }}
        columnVisibility={{
          ordered: [
            { id: true },
            { name: true },
            { email: true },
            { sales: true },
          ],
        }}
        customButtonName=""
        data="{{load_fhir_target_concepts.data}}"
        pageSize={7}
      >
        <KeyValueMap
          id="keyValue1"
          data="{{fhir_more_information.data}}"
          prevRowFormats={{ ordered: [] }}
          prevRowMappers={{ ordered: [] }}
          rows={[
            "a",
            "b",
            "c",
            "uuid",
            "code",
            "display",
            "definition",
            "comments",
            "terminology_version_uuid",
          ]}
          rowVisibility={{
            ordered: [
              { a: true },
              { b: true },
              { display: true },
              { c: true },
              { code: true },
              { terminology_version_uuid: true },
              { definition: true },
              { comments: true },
              { uuid: true },
            ],
          }}
        />
      </TableLegacy>
    </ModuleContainerWidget>
  </Frame>
</App>
