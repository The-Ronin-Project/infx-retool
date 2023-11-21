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
  style={{ ordered: [] }}
  styleContext={{ ordered: [{ textDark: "rgb(34, 34, 34)" }] }}
  transition="slide"
>
  <Header>
    <Tabs
      id="tabs1"
      itemMode="static"
      navigateContainer={true}
      style={{
        ordered: [
          { selectedBackground: "rgba(240, 244, 248, 0.7)" },
          { unselectedText: "rgb(98, 125, 152)" },
        ],
      }}
      targetContainerId="tabbedcontainer1"
      value="{{ self.values[0] }}"
    >
      <Option id="c75a2" value="Tab 1" />
      <Option id="01672" value="Tab 2" />
      <Option id="9a326" value="Tab 3" />
    </Tabs>
  </Header>
  <View id="0" label="Versions" viewKey={0}>
    <TableLegacy
      id="table1"
      _columns={[
        "id",
        "name",
        "email",
        "sales",
        "uuid",
        "effective_start",
        "effective_end",
        "version",
        "value_set_uuid",
        "status",
        "description",
        "created_date",
        "comments",
      ]}
      _columnVisibility={{
        ordered: [
          { effective_end: true },
          { created_date: true },
          { value_set_uuid: false },
          { effective_start: true },
          { name: true },
          { sales: true },
          { status: true },
          { comments: true },
          { version: true },
          { id: true },
          { uuid: false },
          { email: true },
          { description: true },
        ],
      }}
      _unfilteredSelectedIndex=""
      actionButtonPosition="right"
      actionButtons={[
        {
          ordered: [
            { actionButtonText: "View/Edit" },
            { actionButtonType: "openInternalUrl" },
            { actionButtonQuery: "" },
            {
              actionButtonInternalUrlPath:
                "e05e5e00-22d4-11ec-ac10-033a63082f03",
            },
            {
              actionButtonInternalUrlQuery:
                '"[{\\"key\\":\\"uuid\\",\\"value\\":\\"{{table1.selectedRow.data.uuid}}\\"}]"',
            },
            { actionButtonUrl: "" },
            { actionButtonNewWindow: false },
            { actionButtonDisabled: "" },
          ],
        },
      ]}
      applyDynamicSettingsToColumnOrder={false}
      columnColors={{
        ordered: [
          { effective_end: "" },
          { created_date: "" },
          { value_set_uuid: "" },
          { effective_start: "" },
          { status: "" },
          { comments: "" },
          { version: "" },
          { uuid: "" },
          { description: "" },
        ],
      }}
      columnEditable={{
        ordered: [
          { effective_start: true },
          { effective_end: true },
          { version: false },
          { status: false },
          { description: true },
          { comments: false },
        ],
      }}
      columns={[
        "id",
        "name",
        "email",
        "sales",
        "uuid",
        "effective_start",
        "effective_end",
        "version",
        "value_set_uuid",
        "status",
        "description",
        "created_date",
        "comments",
      ]}
      columnVisibility={{
        ordered: [
          { effective_end: true },
          { created_date: true },
          { value_set_uuid: false },
          { effective_start: true },
          { name: true },
          { sales: true },
          { status: true },
          { comments: true },
          { version: true },
          { id: true },
          { uuid: false },
          { email: true },
          { description: true },
        ],
      }}
      columnWidths={[
        { object: { id: "effective_start", value: 113 } },
        { object: { id: "effective_end", value: 99.203125 } },
        { object: { id: "version", value: 115.953125 } },
        { object: { id: "status", value: 89.609375 } },
        { object: { id: "description", value: 373.125 } },
      ]}
      customButtonName=""
      data="{{ value_set_versions.data }}"
      events={[
        {
          ordered: [
            { event: "saveChanges" },
            { type: "datasource" },
            { method: "trigger" },
            { pluginId: "tableBulkUpdateQuery" },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      pageSize={10}
      showColumnBorders={true}
    />
    <Divider id="divider4" />
  </View>
  <View id="1" label="Metadata" viewKey={1}>
    <Text
      id="title_display"
      style={{ ordered: [{ color: "rgb(16, 42, 67)" }] }}
      value="### {{load_vs_metadata.data.title}}"
      verticalAlign="center"
    />
    <Link
      id="link1"
      iconBefore="line/interface-edit-write-2"
      showUnderline="hover"
      text={'{{edit_title_container.hidden ? "Edit Title" : "Cancel Edit"}}'}
    >
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: "{{!edit_title_container.hidden}}" }] }}
        pluginId="edit_title_container"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Link>
    <Container
      id="edit_title_container"
      hidden="true"
      showBody={true}
      style={{ ordered: [{ border: "rgba(245, 245, 245, 0)" }] }}
    >
      <Header>
        <Text
          id="collapsibleTitle1"
          value="#### Container title"
          verticalAlign="center"
        />
        <ToggleButton
          id="collapsibleToggle1"
          horizontalAlign="right"
          iconForFalse="bold/interface-arrows-button-down"
          iconForTrue="bold/interface-arrows-button-up"
          iconPosition="replace"
          styleVariant="outline"
          text="{{ self.value ? 'Hide' : 'Show' }}"
          value="{{ edit_title_container.showBody }}"
        >
          <Event
            event="change"
            method="setShowBody"
            params={{ ordered: [{ showBody: "{{ self.value }}" }] }}
            pluginId="edit_title_container"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </ToggleButton>
      </Header>
      <View id="b2eb5" viewKey="View 1">
        <TextInput
          id="title_edit"
          label="Title"
          value="{{load_vs_metadata.data.title[0]}}"
        />
        <Button id="save_title" styleVariant="solid" text="Save">
          <Event
            event="click"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="save_title_edit"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
      </View>
    </Container>
    <Divider id="divider1" />
    <Text
      id="name_subtitle"
      value="**{{load_vs_metadata.data.name}}** is the name of the value set. 

Name is intended to be machine-readable, while title is intended to be human-readable."
      verticalAlign="center"
    />
    <Link
      id="link4"
      iconBefore="line/interface-edit-write-2"
      showUnderline="hover"
      text={'{{edit_name_container.hidden ? "Edit Name" : "Cancel Edit"}}'}
    >
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: "{{!edit_name_container.hidden}}" }] }}
        pluginId="edit_name_container"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Link>
    <Container
      id="edit_name_container"
      hidden="true"
      showBody={true}
      style={{ ordered: [{ border: "rgba(245, 245, 245, 0)" }] }}
    >
      <Header>
        <Text
          id="collapsibleTitle5"
          value="#### Container title"
          verticalAlign="center"
        />
        <ToggleButton
          id="collapsibleToggle5"
          horizontalAlign="right"
          iconForFalse="bold/interface-arrows-button-down"
          iconForTrue="bold/interface-arrows-button-up"
          iconPosition="replace"
          styleVariant="outline"
          text="{{ self.value ? 'Hide' : 'Show' }}"
          value="{{ edit_name_container.showBody }}"
        >
          <Event
            event="change"
            method="setShowBody"
            params={{ ordered: [{ showBody: "{{ self.value }}" }] }}
            pluginId="edit_name_container"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </ToggleButton>
      </Header>
      <View id="b2eb5" viewKey="View 1">
        <TextInput
          id="name_edit"
          label="Name"
          value="{{load_vs_metadata.data.name[0]}}"
        />
        <Button id="save_name" styleVariant="solid" text="Save">
          <Event
            event="click"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="save_name_edit"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
      </View>
    </Container>
    <Divider id="divider5" />
    <Spacer id="spacer6" />
    <Text
      id="text5"
      value="{{load_vs_metadata.data.description[0]}}"
      verticalAlign="center"
    />
    <Link
      id="link5"
      iconBefore="line/interface-edit-write-2"
      text={
        '{{edit_description_container.hidden ? "Edit Description" : "Cancel Edit"}}'
      }
    >
      <Event
        enabled=""
        event="click"
        method="setHidden"
        params={{
          ordered: [{ hidden: "{{!edit_description_container.hidden}}" }],
        }}
        pluginId="edit_description_container"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Link>
    <Container
      id="edit_description_container"
      hidden="true"
      showBody={true}
      style={{ ordered: [{ border: "rgba(245, 245, 245, 0)" }] }}
    >
      <Header>
        <Text
          id="collapsibleTitle2"
          value="#### Container title"
          verticalAlign="center"
        />
        <ToggleButton
          id="collapsibleToggle2"
          horizontalAlign="right"
          iconForFalse="bold/interface-arrows-button-down"
          iconForTrue="bold/interface-arrows-button-up"
          iconPosition="replace"
          styleVariant="outline"
          text="{{ self.value ? 'Hide' : 'Show' }}"
          value="{{ edit_description_container.showBody }}"
        >
          <Event
            event="change"
            method="setShowBody"
            params={{ ordered: [{ showBody: "{{ self.value }}" }] }}
            pluginId="edit_description_container"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </ToggleButton>
      </Header>
      <View id="b2eb5" viewKey="View 1">
        <TextInput
          id="description_edit"
          label="Description"
          value="{{load_vs_metadata.data.description[0]}}"
        />
        <Button id="save_description" styleVariant="solid" text="Save">
          <Event
            event="click"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="save_description_edit"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
      </View>
    </Container>
    <Spacer id="spacer3" />
    <Text
      id="text6"
      value="{{load_vs_metadata.data.purpose[0]}}"
      verticalAlign="center"
    />
    <Link
      id="link6"
      iconBefore="line/interface-edit-write-2"
      text={
        '{{edit_purpose_container.hidden ? "Edit Purpose" : "Cancel Edit"}}'
      }
    >
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: "{{!edit_purpose_container.hidden}}" }] }}
        pluginId="edit_purpose_container"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Link>
    <Container
      id="edit_purpose_container"
      hidden="true"
      showBody={true}
      style={{ ordered: [{ border: "rgba(245, 245, 245, 0)" }] }}
    >
      <Header>
        <Text
          id="collapsibleTitle3"
          value="#### Container title"
          verticalAlign="center"
        />
        <ToggleButton
          id="collapsibleToggle3"
          horizontalAlign="right"
          iconForFalse="bold/interface-arrows-button-down"
          iconForTrue="bold/interface-arrows-button-up"
          iconPosition="replace"
          styleVariant="outline"
          text="{{ self.value ? 'Hide' : 'Show' }}"
          value="{{ edit_purpose_container.showBody }}"
        >
          <Event
            event="change"
            method="setShowBody"
            params={{ ordered: [{ showBody: "{{ self.value }}" }] }}
            pluginId="edit_purpose_container"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </ToggleButton>
      </Header>
      <View id="b2eb5" viewKey="View 1">
        <TextInput
          id="purpose_edit"
          label="Purpose"
          value="{{load_vs_metadata.data.purpose[0]}}"
        />
        <Button id="save_purpose" styleVariant="solid" text="Save">
          <Event
            event="click"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="save_purpose_edit"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
      </View>
    </Container>
    <Divider id="divider2" />
    <Text
      id="text7"
      value="Use cases specify how a value set is used within Project Ronin. 
Use cases will usually connect a value set to a specific product feature or an input for a machine learning model."
      verticalAlign="center"
    />
    <Link
      id="link7"
      iconBefore="line/interface-edit-write-2"
      showUnderline="hover"
      text={'{{useCaseView.hidden ? "Cancel Edit" : "Edit Use Cases"}}'}
    >
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: "{{!useCaseView.hidden}}" }] }}
        pluginId="useCaseView"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Link>
    <Container
      id="useCaseView"
      showBody={true}
      style={{ ordered: [{ border: "surfacePrimary" }] }}
    >
      <Header>
        <Text
          id="containerTitle1"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="9330a" viewKey="View 1">
        <Text id="text8" value="**Primary Use Case:**" verticalAlign="center" />
        <Text
          id="text12"
          value=" #### {{processPrimary.data}}"
          verticalAlign="center"
        />
        <ListView id="use_case_list_view">
          <Text
            id="text10"
            hidden="{{i!=0}}"
            value="**Secondary Use Cases:**"
            verticalAlign="center"
          />
          <Divider id="divider7" />
          <Text
            id="text11"
            value="{{processUseCases.data[i]}}"
            verticalAlign="center"
          />
        </ListView>
      </View>
    </Container>
    <Include src="./useCaseEdit.rsx" />
    <Divider id="divider3" />
    <Spacer id="spacer7" />
    <Text
      id="text4"
      value="Published by **{{load_vs_metadata.data.publisher}}**"
      verticalAlign="center"
    />
    <Link
      id="link3"
      iconBefore="line/interface-edit-write-2"
      showUnderline="hover"
      text={
        '{{edit_publisher_container.hidden ? "Edit Publisher" : "Cancel Edit"}}'
      }
    >
      <Event
        event="click"
        method="setHidden"
        params={{
          ordered: [{ hidden: "{{!edit_publisher_container.hidden}}" }],
        }}
        pluginId="edit_publisher_container"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Link>
    <Container
      id="edit_publisher_container"
      hidden="true"
      showBody={true}
      style={{ ordered: [{ border: "rgba(245, 245, 245, 0)" }] }}
    >
      <Header>
        <Text
          id="collapsibleTitle4"
          value="#### Container title"
          verticalAlign="center"
        />
        <ToggleButton
          id="collapsibleToggle4"
          horizontalAlign="right"
          iconForFalse="bold/interface-arrows-button-down"
          iconForTrue="bold/interface-arrows-button-up"
          iconPosition="replace"
          styleVariant="outline"
          text="{{ self.value ? 'Hide' : 'Show' }}"
          value="{{ edit_publisher_container.showBody }}"
        >
          <Event
            event="change"
            method="setShowBody"
            params={{ ordered: [{ showBody: "{{ self.value }}" }] }}
            pluginId="edit_publisher_container"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </ToggleButton>
      </Header>
      <View id="b2eb5" viewKey="View 1">
        <Select
          id="publisher_select"
          emptyMessage="No options"
          itemMode="static"
          label="Publisher"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          value="{{load_vs_metadata.data.publisher[0]}}"
        >
          <Option id="928cf" value="Project Ronin" />
          <Option id="55a81" value="FHIR" />
        </Select>
        <Button id="save_publisher" styleVariant="solid" text="Save">
          <Event
            event="click"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="save_publisher_edit"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
      </View>
    </Container>
    <Divider id="divider6" />
    <Spacer id="spacer8" />
    <Text
      id="text3"
      value="**{{load_vs_metadata.data.uuid[0]}}** is the UUID of the value set (also known as `value_set_uuid`). 

This is assigned with the value set is first created and cannot be edited afterward. It is consistent across all versions of the value set."
      verticalAlign="center"
    />
  </View>
  <View id="3" label="Create New Version" viewKey={3}>
    <FormWidget
      id="form1"
      disabled=""
      events={[
        {
          ordered: [
            { event: "submit" },
            { type: "datasource" },
            { method: "trigger" },
            { pluginId: "new_value_set_version" },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      hidden=""
      loading=""
      onSubmit="new_value_set_version"
      overflowType="scroll"
      submitDisabled=""
    >
      <TextInput
        id="textInput4"
        _disclosedFields={{ array: [] }}
        disabled="true"
        formDataKey="{{ self.id}}"
        hidden="false
"
        label="uuid"
        placeholder="Enter value"
        value="{{uuid.v4()}}"
      />
      <DateRangePickerWidget id="effective_dates" label="Effective Dates" />
      <TextArea
        id="textinput2"
        _disclosedFields={{ array: [] }}
        autoResize={true}
        label="description"
        labelAlign="right"
        labelWrap={true}
        minLines={2}
        placeholder="Enter a value"
      />
      <NumberInput
        id="textinput3"
        _disclosedFields={{ array: [] }}
        currency="USD"
        decimalPlaces="0"
        label="version"
        labelAlign="right"
        labelWrap={true}
        placeholder="Enter a value"
        showClear={true}
        showSeparators={true}
        showStepper={true}
        value="1"
      />
      <SelectWidget
        id="dropdown1"
        label="status"
        placeholder="Select a value"
        value="draft"
        values="{{get_statuses.data.display}}"
      />
    </FormWidget>
  </View>
  <Event
    event="click"
    method="trigger"
    params={{ ordered: [] }}
    pluginId="save_publisher_edit"
    type="datasource"
    waitMs="0"
    waitType="debounce"
  />
</Container>
