<App>
  <Include src="./functions.rsx" />
  <GlobalWidgetProp id="source_code" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    paddingType="normal"
    sticky={null}
    type="main"
  >
    <ModuleContainerWidget
      id="moduleContainer"
      backgroundColor="white"
      isGlobalWidgetContainer={true}
    >
      <Text
        id="text1"
        value="**Reference data from RxNorm API** ( {{rxnorm_reference_info.data.obsolete_count}} Obsolete Codes Hidden)"
        verticalAlign="center"
      />
      <Table
        id="medication_info_table"
        cellSelection="none"
        clearChangesetOnSave={true}
        data="{{ rxnorm_reference_info.data.rxnorm_info }}"
        defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
        enableSaveActions={true}
        heightType="auto"
        primaryKeyColumnId="bcec8"
        rowHeight="medium"
        showBorder={true}
        showFooter={true}
        showHeader={true}
        toolbarPosition="bottom"
      >
        <Column
          id="bcec8"
          alignment="left"
          editable={false}
          editableOptions={{ showStepper: true }}
          format="string"
          formatOptions={{ showSeparators: true, notation: "standard" }}
          groupAggregationMode="sum"
          key="rxcui"
          label="RxCUI"
          placeholder="Enter value"
          position="center"
          size={77.015625}
          summaryAggregationMode="none"
        />
        <Column
          id="bce8a"
          alignment="left"
          format="string"
          groupAggregationMode="none"
          key="name"
          label="Display"
          placeholder="Enter value"
          position="center"
          size={334.875}
          summaryAggregationMode="none"
        />
        <Column
          id="5de66"
          alignment="left"
          format="tag"
          formatOptions={{ automaticColors: true }}
          groupAggregationMode="none"
          key="status"
          label="Status"
          placeholder="Select option"
          position="center"
          size={91.78125}
          summaryAggregationMode="none"
          valueOverride="{{ _.startCase(item) }}"
        />
        <Column
          id="9259d"
          alignment="left"
          format="tag"
          formatOptions={{ automaticColors: true }}
          groupAggregationMode="none"
          key="tty"
          label="Term Type"
          placeholder="Select option"
          position="center"
          size={41}
          summaryAggregationMode="none"
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
            pluginId="medication_info_table"
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
            pluginId="medication_info_table"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </ToolbarButton>
      </Table>
    </ModuleContainerWidget>
  </Frame>
</App>
