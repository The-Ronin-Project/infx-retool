<Container
  id="tabbedcontainer1"
  currentViewIndex={0}
  currentViewKey={0}
  disabled=""
  heightType="fixed"
  hidden={null}
  hoistFetching={true}
  maintainSpaceWhenHidden={null}
  overflowType="hidden"
  showBody={true}
  showHeader={true}
  showInEditor={null}
  style={{ ordered: [{ background: "rgb(240, 244, 248)" }] }}
  styleContext={{ ordered: [{ textDark: "rgb(16, 42, 67)" }] }}
  transition="slide"
>
  <Header>
    <Tabs
      id="tabs1"
      itemMode="static"
      navigateContainer={true}
      targetContainerId="tabbedcontainer1"
      value="{{ self.values[0] }}"
    >
      <Option id="f093e" value="Tab 1" />
      <Option id="abe05" value="Tab 2" />
      <Option id="62656" value="Tab 3" />
    </Tabs>
  </Header>
  <View id="0" label="Rules" viewKey={0}>
    <Include src="./modal1.rsx" />
    <SplitButton
      id="splitButton1"
      _colorByIndex={["", "", "", "", ""]}
      _fallbackTextByIndex={["", "", "", "", ""]}
      _imageByIndex={["", "", "", "", ""]}
      _values={["", "", "", "Action 4", "Action 5"]}
      itemMode="static"
      overlayMaxHeight={375}
      showSelectionIndicator={true}
      styleVariant="solid"
    >
      <Option id="3ba69" label="Add Rule Manually">
        <Event
          event="click"
          method="open"
          params={{ ordered: [] }}
          pluginId="modal1"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option id="ada30" label="Go to LOINC Rule Builder">
        <Event
          event="click"
          method="openApp"
          params={{
            ordered: [
              { uuid: "7bd3eb40-82ff-11ec-8d5b-372c3492a848" },
              {
                options: {
                  ordered: [
                    {
                      queryParams: [
                        {
                          ordered: [
                            { key: "vs_version_uuid" },
                            { value: "{{urlparams.uuid}}" },
                          ],
                        },
                      ],
                    },
                    { newTab: true },
                  ],
                },
              },
            ],
          }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option id="04c55" label="Go to RxNorm Rule Builder">
        <Event
          event="click"
          method="openApp"
          params={{
            ordered: [
              { uuid: "46e482a2-c658-11ee-94c9-9b1b82d11ba6" },
              {
                options: {
                  ordered: [
                    {
                      queryParams: [
                        {
                          ordered: [
                            { key: "value_set_version" },
                            { value: "{{urlparams.uuid}}" },
                          ],
                        },
                      ],
                    },
                    { newTab: true },
                  ],
                },
              },
            ],
          }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="4312b"
        disabled={false}
        hidden={false}
        label="Go to FHIR Rule Builder"
      >
        <Event
          event="click"
          method="openApp"
          params={{
            ordered: [
              {
                options: {
                  ordered: [
                    { newTab: true },
                    {
                      queryParams: [
                        {
                          ordered: [
                            { key: "value_set_version" },
                            { value: "{{urlparams.uuid}}" },
                          ],
                        },
                      ],
                    },
                  ],
                },
              },
              { uuid: "20aa69c6-c658-11ee-aad3-a7355011e7f1" },
            ],
          }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="b6bd8"
        disabled={false}
        hidden={false}
        label="Go to ICD-10 CM Rule Builder"
      >
        <Event
          event="click"
          method="openApp"
          params={{
            ordered: [
              { uuid: "49aa2020-ab8c-11ec-840f-e3e83a5795f2" },
              {
                options: {
                  ordered: [
                    {
                      queryParams: [
                        {
                          ordered: [
                            { key: "value_set_version" },
                            { value: "{{urlparams.uuid}}" },
                          ],
                        },
                      ],
                    },
                    { newTab: true },
                  ],
                },
              },
            ],
          }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
    </SplitButton>
    <TableLegacy
      id="rules_table"
      _columns={[
        "rule_group",
        "uuid",
        "position",
        "description",
        "property",
        "operator",
        "value",
        "include",
        "value_set_version",
        "terminology_version",
        "terminology",
        "version",
      ]}
      _columnVisibility={{
        ordered: [
          { effective_end: false },
          { operator: true },
          { include: true },
          { position: false },
          { effective_start: false },
          { name: true },
          { sales: true },
          { terminology_version: false },
          { value_set_version: false },
          { value: true },
          { terminology: true },
          { property: true },
          { version: true },
          { id: true },
          { uuid: false },
          { rule_group: true },
          { email: true },
          { description: true },
          { vs_uuid: false },
          { group: true },
        ],
      }}
      _unfilteredSelectedIndex=""
      actionButtonPosition="right"
      actionButtons={[
        {
          ordered: [
            { actionButtonText: "Delete" },
            { actionButtonType: "runQuery" },
            { actionButtonQuery: "delete_rule" },
            { actionButtonInternalUrlPath: "" },
            { actionButtonInternalUrlQuery: "" },
            { actionButtonUrl: "" },
            { actionButtonNewWindow: false },
            {
              actionButtonDisabled:
                "{{ version_metadata.data.status == 'active'}}",
            },
          ],
        },
      ]}
      applyDynamicSettingsToColumnOrder={false}
      columnAllowOverflow={{ ordered: [{ value: true }] }}
      columnColors={{
        ordered: [
          { effective_end: "" },
          { operator: "" },
          { include: "" },
          { position: "" },
          { effective_start: "" },
          { terminology_version: "" },
          { value_set_version: "" },
          { value: "" },
          { terminology: "" },
          { property: "" },
          { version: "" },
          { uuid: "" },
          { rule_group: "" },
          { description: "" },
          { vs_uuid: "" },
          { group: "" },
        ],
      }}
      columnEditable={{
        ordered: [
          { value: true },
          { rule_group: true },
          { terminology_version: false },
          { version: false },
        ],
      }}
      columnHeaderNames={{
        ordered: [
          { version: "Term. Version" },
          { terminology: "Terminology" },
          { rule_group: "group" },
        ],
      }}
      columnRestrictedEditing={{
        ordered: [{ value: "{{version_metadata.data.status[0]=='active'}}" }],
      }}
      columns={[
        "rule_group",
        "uuid",
        "position",
        "description",
        "property",
        "operator",
        "value",
        "include",
        "value_set_version",
        "terminology_version",
        "terminology",
        "version",
      ]}
      columnVisibility={{
        ordered: [
          { effective_end: false },
          { operator: true },
          { include: true },
          { position: false },
          { effective_start: false },
          { name: true },
          { sales: true },
          { terminology_version: false },
          { value_set_version: false },
          { value: true },
          { terminology: true },
          { property: true },
          { version: true },
          { id: true },
          { uuid: false },
          { rule_group: true },
          { email: true },
          { description: true },
          { vs_uuid: false },
          { group: true },
        ],
      }}
      columnWidths={[
        { object: { id: "position", value: 66.5 } },
        { object: { id: "operator", value: 109.63351440429688 } },
        { object: { id: "value", value: 213.47442626953125 } },
        { object: { id: "description", value: 115.640625 } },
      ]}
      customButtonName=""
      data="{{load_rules.data}}"
      events={[
        {
          ordered: [
            { event: "saveChanges" },
            { type: "datasource" },
            { method: "trigger" },
            { pluginId: "bulk_update_values" },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      overflowType="scroll"
      pageSize={20}
      showColumnBorders={true}
    />
    <Text
      id="text1"
      _disclosedFields={{ array: [] }}
      style={{ ordered: [] }}
      value="UUID of Value Set Version: {{urlparams.uuid}}"
      verticalAlign="center"
    />
  </View>
  <View id="3" label="Expansion" viewKey={3}>
    <ButtonWidget
      id="button2"
      events={[
        {
          ordered: [
            { event: "click" },
            { type: "datasource" },
            { method: "trigger" },
            { pluginId: "load_expansion_uuid" },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
        {
          ordered: [
            { event: "click" },
            { type: "datasource" },
            { method: "trigger" },
            { pluginId: "load_expansion_metadata" },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      value="Load Expansion"
    />
    <Button
      id="button4"
      _disclosedFields={{ array: [] }}
      styleVariant="solid"
      text="Download Expansion Report"
    >
      <Event
        event="click"
        method="openUrl"
        params={{
          ordered: [
            {
              options: { ordered: [{ newTab: true }, { forceReload: false }] },
            },
            {
              url: "https://hashi.prod.projectronin.io/ValueSets/expansions/{{load_expansion_metadata.data.uuid}}/report",
            },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="button5"
      _disclosedFields={{ array: [] }}
      styleVariant="solid"
      text="View Diff From Previous Version"
    >
      <Event
        event="click"
        method="openApp"
        params={{
          ordered: [
            { uuid: "00704b30-c658-11ee-b17f-4fd098d803a4" },
            {
              options: {
                ordered: [
                  {
                    queryParams: [
                      {
                        ordered: [
                          { key: "vs_name" },
                          { value: "{{version_metadata.data.name}}" },
                        ],
                      },
                      { ordered: [{ key: "" }, { value: "" }] },
                    ],
                  },
                  { newTab: true },
                ],
              },
            },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <ButtonWidget
      id="button3"
      disabled="{{ ['active', 'obsolete', 'retired'].includes(version_metadata.data.status[0])}}"
      events={[
        {
          ordered: [
            { event: "click" },
            { type: "datasource" },
            { method: "trigger" },
            { pluginId: "generate_expansion" },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      style={{ ordered: [{ "accent-background": "#6a6a6a" }] }}
      value="Generate New Expansion"
    />
    <Text
      id="text2"
      _disclosedFields={{ array: [] }}
      style={{ ordered: [] }}
      value="Latest expansion generated at {{load_expansion_metadata.data.timestamp}}"
      verticalAlign="center"
    />
    <TableLegacy
      id="table1"
      _columns={[
        "expansion_uuid",
        "code_simple",
        "code_jsonb",
        "display",
        "version",
        "system",
        "uuid",
        "code_schema",
        "custom_terminology_uuid",
        "fhir_terminology_uuid",
      ]}
      _columnSummaryTypes={{ ordered: [{ code_schema: "" }] }}
      _columnSummaryValues={{ ordered: [{ code_schema: "" }] }}
      _columnVisibility={{
        ordered: [
          { display: true },
          { name: true },
          { sales: true },
          { code: true },
          { system: true },
          { code_schema: false },
          { custom_terminology_uuid: false },
          { version: true },
          { id: true },
          { fhir_terminology_uuid: false },
          { expansion_uuid: false },
          { uuid: false },
          { email: true },
        ],
      }}
      _compatibilityMode={false}
      _unfilteredSelectedIndex=""
      applyDynamicSettingsToColumnOrder={false}
      columnAlignment={{
        ordered: [{ "Custom Column 1": "left" }, { code_schema: "left" }],
      }}
      columnAllowOverflow={{ ordered: [{ display: true }] }}
      columnColors={{
        ordered: [
          { display: "" },
          { code_simple: "" },
          { code_jsonb: "" },
          { code: "" },
          { system: "" },
          { code_schema: "" },
          { custom_terminology_uuid: "" },
          { version: "" },
          { fhir_terminology_uuid: "" },
          { expansion_uuid: "" },
          { uuid: "" },
        ],
      }}
      columnFormats={{
        ordered: [
          { "Custom Column 1": "button" },
          { code_schema: "SingleTagDataCell" },
        ],
      }}
      columnHeaderNames={{
        ordered: [
          { "Custom Column 1": "Action" },
          { code_simple: "Source Code Simple" },
          { code_jsonb: "Source Code jsonb" },
        ],
      }}
      columnMappers={{
        ordered: [{ "Custom Column 1": "Delete" }, { code_schema: "" }],
      }}
      columns={[
        "id",
        "name",
        "email",
        "sales",
        "expansion_uuid",
        "code",
        "display",
        "version",
        "system",
      ]}
      columnTypeProperties={{
        ordered: [
          {
            code_schema: {
              ordered: [
                { optionData: "{{ currentColumn }}" },
                { colorMode: "auto" },
                { allowCustomValue: true },
                {
                  optionLabels:
                    "{{item === 'http://projectronin.io/fhir/StructureDefinition/ronin-conceptMapSourceCodeableConcept' ? 'Codeable Concept' : (item === 'code' ? 'Code' : 'Other')}}",
                },
                { optionColors: { array: [] } },
                { optionValues: { array: [] } },
              ],
            },
          },
        ],
      }}
      columnTypeSpecificExtras={{
        ordered: [
          { "Custom Column 1": { ordered: [{ buttonType: "action" }] } },
        ],
      }}
      columnVisibility={{
        ordered: [
          { display: true },
          { name: true },
          { sales: true },
          { code: true },
          { system: true },
          { version: true },
          { id: true },
          { expansion_uuid: false },
          { email: true },
        ],
      }}
      columnWidths={[
        { object: { id: "code", value: 251.25 } },
        { object: { id: "code_schema", value: 167.5694580078125 } },
        { object: { id: "code_simple", value: 168.59375 } },
        { object: { id: "system", value: 546.5538330078125 } },
        { object: { id: "code_jsonb", value: 242.18577575683594 } },
        { object: { id: "version", value: 151.97052001953125 } },
        { object: { id: "display", value: 693.5816040039062 } },
      ]}
      customButtonName=""
      data="{{ load_expansion.data }}"
      overflowType="scroll"
      pageSize={16}
      showColumnBorders={true}
    />
    <Text
      id="text11"
      _disclosedFields={{ array: [] }}
      value="expansion uuid: {{load_expansion_uuid.data.uuid}}"
      verticalAlign="center"
    />
  </View>
  <View id="4" label="Review" viewKey={4}>
    <Text
      id="text14"
      _disclosedFields={{ array: [] }}
      value="#### Update Status"
      verticalAlign="center"
    />
    <Text
      id="text15"
      _disclosedFields={{ array: [] }}
      value="The drop-down below allows the status of Version **{{version_metadata.data.version}}** of **{{version_metadata.data.title[0].trim()}}** to be updated to one of the availbale options. To set to 'active' please use the Publish button below."
      verticalAlign="center"
    />
    <Text
      id="text22"
      _disclosedFields={{ array: [] }}
      value="Note: Current status for this version of the value set is **{{version_metadata.data.status}}**."
      verticalAlign="center"
    />
    <Select
      id="status_select"
      allowDeselect={true}
      allowSearch={true}
      data="{{load_statuses.data.display}}"
      disabled=""
      hideLabel={false}
      itemMode="static"
      label="Update Status to"
      labels="{{ _.startCase(item) }}"
      placeholder="Select an option"
      showSelectionIndicator={true}
      value="{{version_metadata.data.status[0]}}"
      values="{{ item }}"
    >
      <Option id="400fc" disabled={false} hidden={false} value="reviewed" />
      <Option id="9d103" disabled={false} hidden={false} value="in progress" />
      <Option id="91fe5" disabled={false} hidden={false} value="retired" />
      <Option id="984c2" disabled={false} hidden={false} value="obsolete" />
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="update_status"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
    <Divider id="divider1" _disclosedFields={{ array: [] }} />
    <Text
      id="text18"
      _disclosedFields={{ array: [] }}
      value="#### Publish Version **{{version_metadata.data.version}}** of **{{version_metadata.data.title[0].trim()}}**"
      verticalAlign="center"
    />
    <Text
      id="text19"
      _disclosedFields={{ array: [] }}
      value="The button below will set the status of Version **{{version_metadata.data.version}}**of **{{version_metadata.data.title[0].trim()}}** to 'active' and publish it to OCI. This action can not be undone."
      verticalAlign="center"
    />
    <Button
      id="button8"
      _disclosedFields={{ array: [] }}
      styleVariant="solid"
      text="Publish"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="publish_and_set_active"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Text
      id="text23"
      _disclosedFields={{ array: [] }}
      hidden={'{{version_metadata.data.status != "active"}}'}
      value="✅ Version status 'active'"
      verticalAlign="center"
    />
    <Text
      id="text24"
      _disclosedFields={{ array: [] }}
      hidden="{{version_metadata.data.status == 'active'}}"
      value="❌ Version status not 'active'"
      verticalAlign="center"
    />
    <Text
      id="text20"
      _disclosedFields={{ array: [] }}
      hidden="{{!oci_status_check.metadata}}"
      value="✅ Published to OCI"
      verticalAlign="center"
    />
    <Text
      id="text21"
      _disclosedFields={{ array: [] }}
      hidden="{{oci_status_check.metadata}}"
      value="❌ Could not verify publication to OCI"
      verticalAlign="center"
    />
  </View>
</Container>
