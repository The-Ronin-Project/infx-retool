<App>
  <Include src="./functions.rsx" />
  <Frame id="$main" type="main">
    <Select
      id="cpt_version_select"
      allowDeselect={true}
      allowSearch={true}
      data="{{ load_cpt_versions.data }}"
      deprecatedLabels=""
      label="CPT Version"
      labels="{{item.version}}"
      showSelectionIndicator={true}
      value="{{load_cpt_versions.data.uuid[0]}}"
      values="{{ item.uuid }}"
    />
    <ContainerWidget id="container2" title="Select Codes with Custom Range">
      <TextInput
        id="range_start"
        label="Start"
        labelPosition="top"
        placeholder="Enter start value"
      />
      <TextInput
        id="range_end"
        label="End"
        labelPosition="top"
        placeholder="Enter end value"
      />
      <TextInput
        id="custom_range_name"
        label="Name (Optional)"
        labelPosition="top"
        placeholder="Enter value"
      />
      <Button id="button3" styleVariant="solid" text="Add Custom Range">
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="add_custom_range"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Button>
    </ContainerWidget>
    <ContainerWidget id="container1" title="Select codes by range">
      <Select
        id="category_select"
        allowDeselect={true}
        allowSearch={true}
        data="{{category_options.data.category}}"
        label="Select CPT Section"
        labels="{{ _.startCase(item) }}"
        placeholder="Select an option"
        showSelectionIndicator={true}
        value=""
        values="{{ item }}"
      />
      <Select
        id="category_2_select"
        allowDeselect={true}
        allowSearch={true}
        data="{{category_2_options.data.category_name}}"
        deprecatedLabels="{{category_2_options.data.name_range}}"
        label="Select Section Heading"
        labelPosition="top"
        labels="{{ self.deprecatedLabels[i] }}"
        placeholder="Select an option"
        showSelectionIndicator={true}
        values="{{ item }}"
      />
      <Button id="button2" styleVariant="solid" text="Add All Heading Contents">
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="add_category_2_range"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Button>
      <TableLegacy
        id="category_3_table"
        _columns={[
          "id",
          "email",
          "name",
          "sales",
          "category_3",
          "range",
          "category_name",
        ]}
        _columnVisibility={{
          ordered: [
            { category_name: true },
            { range: true },
            { category_3: true },
            { id: false },
            { name: true },
            { email: false },
            { sales: false },
          ],
        }}
        _unfilteredSelectedIndex=""
        actionButtonPosition="right"
        actionButtons={[
          {
            ordered: [
              { actionButtonText: "Add" },
              { actionButtonType: "runQuery" },
              { actionButtonQuery: "add_category_3_range" },
              { actionButtonInternalUrlPath: "" },
              { actionButtonInternalUrlQuery: "" },
              { actionButtonUrl: "" },
              { actionButtonNewWindow: false },
              { actionButtonDisabled: "" },
            ],
          },
        ]}
        applyDynamicSettingsToColumnOrder={false}
        columnAllowOverflow={{ ordered: [{ category_3: true }] }}
        columnColors={{
          ordered: [
            { category_name: "" },
            { range: "" },
            { category_3: "" },
            { id: "" },
            { name: "" },
            { email: "" },
            { sales: "" },
          ],
        }}
        columnHeaderNames={{
          ordered: [
            { name: "3rd Category" },
            { category_3: "Category 3" },
            { category_name: "Category" },
          ],
        }}
        columns={[
          "id",
          "email",
          "name",
          "sales",
          "category_3",
          "range",
          "category_name",
        ]}
        columnVisibility={{
          ordered: [
            { category_name: true },
            { range: true },
            { category_3: true },
            { id: false },
            { name: true },
            { email: false },
            { sales: false },
          ],
        }}
        columnWidths={[
          { object: { id: "name", value: 313.984375 } },
          { object: { id: "category_3", value: 254.984375 } },
          { object: { id: "range", value: 172 } },
          { object: { id: "category_name", value: 507.890625 } },
        ]}
        customButtonName=""
        data="{{category_3_options.data}}"
        defaultSelectedRow="none"
        overflowType="scroll"
        pageSize={8}
        rowHeight="compact"
        selectRowByDefault={false}
        showColumnBorders={true}
        useCompactMode={true}
      />
      <TableLegacy
        id="category_4_table"
        _columns={[
          "id",
          "name",
          "email",
          "sales",
          "category_4",
          "range",
          "category_name",
        ]}
        _columnVisibility={{
          ordered: [
            { category_name: true },
            { range: true },
            { category_4: true },
            { id: false },
            { name: true },
            { email: false },
            { sales: false },
          ],
        }}
        _unfilteredSelectedIndex=""
        actionButtonPosition="right"
        actionButtons={[
          {
            ordered: [
              { actionButtonText: "Add" },
              { actionButtonType: "runQuery" },
              { actionButtonQuery: "add_category_4_range" },
              { actionButtonInternalUrlPath: "" },
              { actionButtonInternalUrlQuery: "" },
              { actionButtonUrl: "" },
              { actionButtonNewWindow: false },
              { actionButtonDisabled: "" },
            ],
          },
        ]}
        applyDynamicSettingsToColumnOrder={false}
        columnColors={{
          ordered: [
            { category_name: "" },
            { range: "" },
            { category_4: "" },
            { id: "" },
            { name: "" },
            { email: "" },
            { sales: "" },
          ],
        }}
        columnHeaderNames={{
          ordered: [
            { name: "4th Category\n" },
            { category_4: "Category 4" },
            { category_name: "Subcategory" },
          ],
        }}
        columns={[
          "id",
          "name",
          "email",
          "sales",
          "category_4",
          "range",
          "category_name",
        ]}
        columnVisibility={{
          ordered: [
            { category_name: true },
            { range: true },
            { category_4: true },
            { id: false },
            { name: true },
            { email: false },
            { sales: false },
          ],
        }}
        columnWidths={[
          { object: { id: "name", value: 311.984375 } },
          { object: { id: "category_4", value: 310.984375 } },
          { object: { id: "range", value: 127.515625 } },
          { object: { id: "category_name", value: 546.890625 } },
        ]}
        customButtonName=""
        data="{{category_4_options.data}}"
        defaultSelectedRow="none"
        overflowType="scroll"
        pageSize={10}
        rowHeight="compact"
        selectRowByDefault={false}
        showColumnBorders={true}
        useCompactMode={true}
      />
    </ContainerWidget>
    <ContainerWidget id="container4" title="Selected Ranges">
      <TableLegacy
        id="table4"
        _columns={[
          "id",
          "name",
          "email",
          "sales",
          "category_3",
          "category_name",
          "range",
        ]}
        _columnVisibility={{
          ordered: [
            { category_name: true },
            { range: true },
            { category_3: true },
            { id: true },
            { name: true },
            { email: true },
            { sales: true },
          ],
        }}
        _unfilteredSelectedIndex=""
        actionButtonPosition="right"
        actionButtons={[
          {
            ordered: [
              { actionButtonText: "Delete" },
              { actionButtonType: "runQuery" },
              { actionButtonQuery: "remove_range" },
              { actionButtonInternalUrlPath: "" },
              { actionButtonInternalUrlQuery: "" },
              { actionButtonUrl: "" },
              { actionButtonNewWindow: false },
              { actionButtonDisabled: "" },
            ],
          },
        ]}
        applyDynamicSettingsToColumnOrder={false}
        columnColors={{
          ordered: [
            { category_name: "" },
            { range: "" },
            { category_3: "" },
            { id: "" },
            { name: "" },
            { email: "" },
            { sales: "" },
          ],
        }}
        columnHeaderNames={{ ordered: [{ category_name: "Category Name" }] }}
        columns={[
          "id",
          "name",
          "email",
          "sales",
          "category_3",
          "category_name",
          "range",
        ]}
        columnVisibility={{
          ordered: [
            { category_name: true },
            { range: true },
            { category_3: true },
            { id: true },
            { name: true },
            { email: true },
            { sales: true },
          ],
        }}
        columnWidths={[{ object: { id: "category_name", value: 242.046875 } }]}
        customButtonName=""
        data="{{selected_ranges.value}}"
        overflowType="scroll"
        pageSize={10}
        rowHeight="compact"
        showColumnBorders={true}
        useCompactMode={true}
      />
    </ContainerWidget>
    <ContainerWidget id="additional_filters" title="Additional Filters">
      <TextInput
        id="search_string"
        label="Filter by Key Word"
        labelPosition="top"
        placeholder="Enter value"
      >
        <Event
          event="change"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="prepare_preview_request"
          type="datasource"
          waitMs="500"
          waitType="debounce"
        />
      </TextInput>
      <Select
        id="keyword_search_include"
        allowDeselect={true}
        allowSearch={true}
        data="['Include', 'Exclude']"
        hideLabel={true}
        label="Include/Exclude"
        labels="{{ _.startCase(item) }}"
        placeholder="Select an option"
        showSelectionIndicator={true}
        value="'Include'"
        values="{{ item }}"
      />
      <Alert
        id="alert1"
        description="Keyword search matched 1,000+ items, please be more specific"
        hidden="{{keyword_search.data.hits.total.value < 999}}"
        title="Too Many Results"
        type="warning"
      />
      <TextInput
        id="exclude_codes"
        label="Exclude Specific Codes"
        labelPosition="top"
        placeholder="Enter value"
      >
        <Event
          event="change"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="prepare_preview_request"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </TextInput>
    </ContainerWidget>
    <ContainerWidget id="container5" title="Results">
      <TableLegacy
        id="table5"
        _columns={[
          "id",
          "name",
          "email",
          "sales",
          "code",
          "display",
          "medium_display",
          "short_display",
          "version_uuid",
          "system",
          "version",
        ]}
        _columnVisibility={{
          ordered: [
            { display: true },
            { version_uuid: false },
            { name: true },
            { sales: true },
            { code: true },
            { system: false },
            { version: false },
            { medium_display: false },
            { id: true },
            { email: true },
            { short_display: false },
          ],
        }}
        _unfilteredSelectedIndex=""
        actionButtonPosition="right"
        actionButtons={[
          {
            ordered: [
              { actionButtonText: "Exclude" },
              { actionButtonType: "runQuery" },
              { actionButtonQuery: "exclude_code" },
              { actionButtonInternalUrlPath: "" },
              { actionButtonInternalUrlQuery: "" },
              { actionButtonUrl: "" },
              { actionButtonNewWindow: false },
              { actionButtonDisabled: "" },
            ],
          },
        ]}
        applyDynamicSettingsToColumnOrder={false}
        columnAllowOverflow={{ ordered: [{ display: true }] }}
        columnColors={{
          ordered: [
            { display: "" },
            { version_uuid: "" },
            { name: "" },
            { sales: "" },
            { code: "" },
            { system: "" },
            { version: "" },
            { medium_display: "" },
            { id: "" },
            { email: "" },
            { short_display: "" },
          ],
        }}
        columnEditable={{ ordered: [{ system: false }, { version: false }] }}
        columns={[
          "id",
          "name",
          "email",
          "sales",
          "code",
          "display",
          "medium_display",
          "short_display",
          "version_uuid",
          "system",
          "version",
        ]}
        columnVisibility={{
          ordered: [
            { display: true },
            { version_uuid: false },
            { name: true },
            { sales: true },
            { code: true },
            { system: false },
            { version: false },
            { medium_display: false },
            { id: true },
            { email: true },
            { short_display: false },
          ],
        }}
        columnWidths={[
          { object: { id: "code", value: 80.54693603515625 } },
          { object: { id: "system", value: 504.8671875 } },
          { object: { id: "display", value: 796.7265625 } },
        ]}
        customButtonName=""
        data="{{populate_preview_table.data}}"
        defaultSortByColumn="code"
        overflowType="scroll"
        pageSize={17}
        showColumnBorders={true}
      />
    </ContainerWidget>
    <TextInput
      id="description_input"
      label="Description"
      placeholder="Enter value"
    />
    <Button id="button4" styleVariant="solid" text="Save Rules">
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="save_range_rule"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="save_keyword_rule"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="save_exclude_rule"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Frame>
</App>
