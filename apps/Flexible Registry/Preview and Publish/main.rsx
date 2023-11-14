<App>
  <Include src="./functions.rsx" />
  <Include src="./header.rsx" />
  <Frame
    id="$main"
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    sticky={null}
    type="main"
  >
    <Button id="publish_button" styleVariant="solid" text="Publish Registry ">
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="publish_registry_all_environments"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Table
      id="registry_vitals_preview"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ get_registry_preview.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      enableSaveActions={true}
      hidden={'{{ get_registry_metadata.data.registry_type != "vitals"}} '}
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="e9f2f"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        key="sequence"
        label="Sequence"
        placeholder="Enter value"
        position="center"
        size={90}
      />
      <Column
        id="cda2b"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        key="productGroupLabel"
        label="Product group label"
        placeholder="Select option"
        position="center"
        size={136}
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="a286f"
        alignment="left"
        format="string"
        key="productItemLabel"
        label="Product item label"
        placeholder="Enter value"
        position="center"
        size={145}
      />
      <Column
        id="467c0"
        alignment="left"
        format="string"
        key="valueSetDisplayTitle"
        label="Value set display title"
        placeholder="Enter value"
        position="center"
        size={303}
      />
      <Column
        id="b825c"
        alignment="left"
        format="string"
        key="ucumRefUnits"
        label="Ucum ref units"
        placeholder="Enter value"
        position="center"
        size={107}
      />
      <Column
        id="637bf"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        key="refRangeLow"
        label="Ref range low"
        placeholder="Enter value"
        position="center"
        size={102}
      />
      <Column
        id="ef58f"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        key="refRangeHigh"
        label="Ref range high"
        placeholder="Enter value"
        position="center"
        size={118}
      />
      <Column
        id="a5df1"
        alignment="left"
        format="string"
        key="valueSetCodeName"
        label="Value set code name"
        placeholder="Enter value"
        position="center"
        size={267}
      />
      <Column
        id="53196"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        key="valueSetVersion"
        label="Value set version"
        placeholder="Enter value"
        position="center"
        size={127}
      />
      <Column
        id="ffff4"
        alignment="left"
        format="string"
        key="valueSetUuid"
        label="Value set UUID"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="exportData"
          pluginId="registry_vitals_preview"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="refresh"
          pluginId="registry_vitals_preview"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
    <Table
      id="registry_not_labs_not_vitals_preview"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ get_registry_preview.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      enableSaveActions={true}
      hidden={
        '{{ get_registry_metadata.data.registry_type == "labs" || get_registry_metadata.data.registry_type == "vitals" }}'
      }
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="b2171"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        key="sequence"
        label="Sequence"
        placeholder="Enter value"
        position="center"
        size={98}
      />
      <Column
        id="ffd4a"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        key="productGroupLabel"
        label="Product group label"
        placeholder="Select option"
        position="center"
        size={135}
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="37b12"
        alignment="left"
        format="string"
        key="productItemLabel"
        label="Product item label"
        placeholder="Enter value"
        position="center"
        size={177}
      />
      <Column
        id="29492"
        alignment="left"
        format="string"
        key="valueSetDisplayTitle"
        label="Value set display title"
        placeholder="Enter value"
        position="center"
        size={415}
      />
      <Column
        id="e28d5"
        alignment="left"
        format="string"
        key="valueSetCodeName"
        label="Value set code name"
        placeholder="Enter value"
        position="center"
        size={315}
      />
      <Column
        id="09bfc"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        key="valueSetVersion"
        label="Value set version"
        placeholder="Enter value"
        position="center"
        size={121}
      />
      <Column
        id="82e7f"
        alignment="left"
        format="string"
        key="valueSetUuid"
        label="Value set UUID"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="exportData"
          pluginId="registry_not_labs_not_vitals_preview"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="refresh"
          pluginId="registry_not_labs_not_vitals_preview"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
    <Table
      id="registry_labs_preview"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ get_registry_preview.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      enableSaveActions={true}
      hidden={'{{get_registry_metadata.data.registry_type != "labs"}}'}
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="42925"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        key="sequence"
        label="Sequence"
        placeholder="Enter value"
        position="center"
        size={90}
      />
      <Column
        id="d797a"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        key="productGroupLabel"
        label="Product group label"
        placeholder="Select option"
        position="center"
        size={132}
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="895be"
        alignment="left"
        format="string"
        key="productItemLabel"
        label="Product item label"
        placeholder="Enter value"
        position="center"
        size={123}
      />
      <Column
        id="16f3a"
        alignment="left"
        format="string"
        key="valueSetDisplayTitle"
        label="Value set display title"
        placeholder="Enter value"
        position="center"
        size={403}
      />
      <Column
        id="61ea0"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        key="minimumPanelMembers"
        label="Minimum panel members"
        placeholder="Enter value"
        position="center"
        size={166}
      />
      <Column
        id="fe35e"
        alignment="left"
        format="string"
        key="valueSetCodeName"
        label="Value set code name"
        placeholder="Enter value"
        position="center"
        size={321}
      />
      <Column
        id="00e12"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        key="valueSetVersion"
        label="Value set version"
        placeholder="Enter value"
        position="center"
        size={125}
      />
      <Column
        id="f699f"
        alignment="left"
        format="string"
        key="valueSetUuid"
        label="Value set UUID"
        placeholder="Enter value"
        position="center"
        size={118}
      />
      <Action id="dd321" icon="bold/interface-edit-pencil" label="Action 1" />
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="exportData"
          pluginId="registry_labs_preview"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="refresh"
          pluginId="registry_labs_preview"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
  </Frame>
</App>
