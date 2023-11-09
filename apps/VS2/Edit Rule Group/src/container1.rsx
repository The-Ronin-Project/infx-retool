<Container
  id="container1"
  hoistFetching={true}
  showBody={true}
  style={{ ordered: [{ background: "surfacePrimary" }] }}
>
  <Header>
    <Text
      id="containerTitle1"
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="2b15a" viewKey="View 1">
    <Text
      id="text5"
      value="##### {{load_rules.data.title}}"
      verticalAlign="center"
    />
    <Include src="./modal1.rsx" />
    <Text
      id="text6"
      value="{{load_rules.data.description}}"
      verticalAlign="center"
    />
    <SplitButton
      id="splitButton1"
      _colorByIndex={["", "", "", "", "", "", ""]}
      _fallbackTextByIndex={["", "", "", "", "", "", ""]}
      _imageByIndex={["", "", "", "", "", "", ""]}
      _values={["", "Action 5", "", "Action 6", "", "Action 4", "Action 7"]}
      itemMode="static"
      overlayMaxHeight={375}
      showSelectionIndicator={true}
      styleVariant="solid"
    >
      <Option id="90263" icon="bold/interface-add-1" label="Add Rule Manually">
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
      <Option
        id="50d7b"
        disabled={false}
        hidden={false}
        icon="bold/interface-add-1"
        label="Add Loinc Rule"
      >
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
                          ordered: [{ key: "rule_group_uuid" }, { value: "" }],
                        },
                      ],
                    },
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
        id="48626"
        icon="bold/interface-add-1"
        label="Add ICD-10-CM Rule "
      >
        <Event
          event="click"
          method="openApp"
          params={{
            ordered: [
              {
                options: {
                  ordered: [
                    {
                      queryParams: [
                        {
                          ordered: [{ key: "rule_group_uuid" }, { value: "" }],
                        },
                        { ordered: [{ key: "" }, { value: "" }] },
                      ],
                    },
                  ],
                },
              },
              { uuid: "49aa2020-ab8c-11ec-840f-e3e83a5795f2" },
            ],
          }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="6c84a"
        disabled={false}
        hidden={false}
        icon="bold/interface-add-1"
        label="Add RxNorm Rule"
      >
        <Event
          event="click"
          method="openApp"
          params={{
            ordered: [
              { uuid: "5593da60-b510-11ec-ac15-97fd20062a3c" },
              {
                options: {
                  ordered: [
                    {
                      queryParams: [
                        {
                          ordered: [{ key: "rule_group_uuid" }, { value: "" }],
                        },
                      ],
                    },
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
      <Option id="0d2e6" icon="bold/interface-add-1" label="Add CPT Rule">
        <Event
          event="click"
          method="openApp"
          params={{
            ordered: [
              { uuid: "c887fbc0-839a-11ec-a584-93809bc5e41b" },
              {
                options: {
                  ordered: [
                    {
                      queryParams: [
                        {
                          ordered: [{ key: "rule_group_uuid" }, { value: "" }],
                        },
                      ],
                    },
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
        id="cddff"
        disabled={false}
        hidden={false}
        icon="bold/interface-add-1"
        label="Add ICD-10-PCS Rule"
      >
        <Event
          event="click"
          method="openApp"
          params={{
            ordered: [
              {
                options: {
                  ordered: [
                    {
                      queryParams: [
                        {
                          ordered: [{ key: "rule_group_uuid" }, { value: "" }],
                        },
                      ],
                    },
                  ],
                },
              },
              { uuid: "abad41e0-9e7a-11ec-abe4-eface3d2ac5d" },
            ],
          }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="6d9ea"
        disabled={false}
        hidden={false}
        icon="bold/interface-add-1"
        label="Add FHIR Code Syetem"
      >
        <Event
          event="click"
          method="openApp"
          params={{
            ordered: [
              { uuid: "0778f280-28d7-11ed-b5ea-173d17b41745" },
              {
                options: {
                  ordered: [
                    {
                      queryParams: [
                        {
                          ordered: [{ key: "rule_group_uuid" }, { value: "" }],
                        },
                        { ordered: [{ key: "" }, { value: "" }] },
                      ],
                    },
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
    <Link
      id="link2"
      iconAfter="bold/interface-arrows-right-circle-2"
      showUnderline="hover"
      text="Created from Cancer Type Rule Template"
    />
    <Modal
      id="modal2"
      buttonText="Open Modal"
      hidden="true"
      modalHeight="500px"
      modalWidth="80%"
    >
      <Text id="text28" value="**Edit Rule Group**" verticalAlign="center" />
      <TableLegacy
        id="table3"
        _compatibilityMode={false}
        columnColors={{
          ordered: [
            { "": "" },
            { operator: "" },
            { e: "" },
            { name: "" },
            { sales: "" },
            { pro: "" },
            { proper: "" },
            { value: "" },
            { s: "" },
            { property: "" },
            { id: "" },
            { email: "" },
            { description: "" },
          ],
        }}
        columnEditable={{
          ordered: [
            { description: true },
            { property: true },
            { operator: true },
            { value: true },
          ],
        }}
        columnWidths={[
          { object: { id: "operator", value: 145.6015625 } },
          { object: { id: "property", value: 168.9296875 } },
        ]}
        customButtonName=""
        data={
          '[{\n  "description": "breast cancer",\n  "property": "ecl",\n  "operator": "=",\n  "value": "<64572001 |Disease (disorder)|: {<<116676008 |Associated morphology (attribute)| = <<108369006 |Neoplasm (morphologic abnormality)| AND <<363698007 |Finding site (attribute)| = <<76752008 |Breast structure (body structure)|}"\n}]'
        }
        doubleClickToEdit={true}
        overflowType="scroll"
        showBoxShadow={false}
      />
    </Modal>
    <Include src="./container2.rsx" />
    <Text id="text25" value="**Inclusion Rules**" verticalAlign="center" />
    <ListView
      id="listView1"
      instances="{{include_rules.data.length}}"
      style={{ ordered: [{ "primary-surface": "#ffffff" }] }}
    >
      <EditableText
        id="editableText1"
        editIcon="bold/interface-edit-write-1"
        inputTooltip="`Enter` to save, `Esc` to cancel"
        label=""
        placeholder="Enter value"
        value="{{ include_rules.data[i].description }}"
      />
      <Text
        id="text10"
        heightType="fixed"
        value="{{ include_rules.data[i].property }}"
        verticalAlign="center"
      />
      <Text
        id="text11"
        heightType="fixed"
        value="{{ include_rules.data[i].operator }}"
        verticalAlign="center"
      />
      <Tags
        id="tags1"
        allowWrap={true}
        colors="{{ theme.automatic }}"
        hashColors={true}
        value="{{ include_rules.data[i].terminology_version }}"
      />
      <Text
        id="text13"
        value="{{ include_rules.data[i].include_exclude }}"
        verticalAlign="center"
      />
      <DropdownButton
        id="dropdownButton1"
        _colorByIndex={["", "", ""]}
        _fallbackTextByIndex={["", "", ""]}
        _imageByIndex={["", "", ""]}
        _values={["", "", "Action 3"]}
        itemMode="static"
        overlayMaxHeight={375}
        styleVariant="outline"
        text="Options"
      >
        <Option id="60a4e" icon="bold/interface-delete-bin-2" label="Delete">
          <Event
            event="click"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="delete_rule_from_rule_group"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Option>
        <Option id="565b0" label="Make Exclusion" />
        <Option
          id="834ba"
          disabled={false}
          hidden={false}
          label="Edit Rule in Rule Group"
        >
          <Event
            event="click"
            method="open"
            params={{ ordered: [] }}
            pluginId="modal2"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Option>
      </DropdownButton>
      <EditableTextArea
        id="editableTextArea1"
        editIcon="bold/interface-edit-write-1"
        inputTooltip="`Shift+Enter` to save, `Esc` to cancel"
        label=""
        labelPosition="top"
        placeholder="Enter value"
        value="{{ include_rules.data[i].value }}"
      />
      <Divider id="divider3" hidden="{{i==include_rules.data.length - 1}}" />
      <Spacer id="spacer1" />
    </ListView>
    <Text id="text26" value="**Exclusion Rules**" verticalAlign="center" />
    <ListView
      id="listView2"
      instances="{{load_rules.data.rules.length}}"
      style={{ ordered: [{ "primary-surface": "#ffffff" }] }}
    >
      <EditableText
        id="editableText2"
        editIcon="bold/interface-edit-write-1"
        inputTooltip="`Enter` to save, `Esc` to cancel"
        label=""
        placeholder="Enter value"
        value="{{ exclude_rules.data[i].description }}"
      />
      <Text
        id="text22"
        heightType="fixed"
        value="{{ exclude_rules.data[i].property }}"
        verticalAlign="center"
      />
      <Text
        id="text23"
        heightType="fixed"
        value="{{ exclude_rules.data[i].operator }}"
        verticalAlign="center"
      />
      <EditableTextArea
        id="editableTextArea2"
        editIcon="bold/interface-edit-write-1"
        inputTooltip="`Shift+Enter` to save, `Esc` to cancel"
        label=""
        labelPosition="top"
        placeholder="Enter value"
        value="{{ exclude_rules.data[i].value }}"
      />
      <Tags
        id="tags2"
        allowWrap={true}
        colors="{{ theme.automatic }}"
        hashColors={true}
        value="{{ exclude_rules.data[i].terminology_version }}"
      />
      <Text
        id="text24"
        value="{{ exclude_rules.data[i].include_exclude }}"
        verticalAlign="center"
      />
      <Divider id="divider4" hidden="{{i==exclude_rules.data.length - 1}}" />
    </ListView>
    <ToggleButton
      id="toggleButton1"
      horizontalAlign="stretch"
      iconForFalse="bold/interface-delete-2"
      iconForTrue="bold/interface-validation-check"
      styleVariant="outline"
      text="{{ self.value ? 'Include contents of this rule group in the value set' : 'Exclude contents of this rule group from the value set' }}"
      value="{{load_rules.data[i].include}}"
    >
      <Event
        enabled="{{ self.value = true}}"
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="include_rule_group"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{self.value = false}}"
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="exclude_rule_group"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </ToggleButton>
  </View>
</Container>
