<App>
  <Include src="./functions.rsx" />
  <Include src="./header.rsx" />
  <Frame id="$main" sticky={false} type="main">
    <Text
      id="group_title"
      value="## {{get_group.data.title}}
"
    />
    <Include src="./src/edit_group_member_modal.rsx" />
    <Link
      id="link1"
      iconBefore="bold/interface-edit-write-2"
      showUnderline="hover"
      text={
        '{{edit_title_container.hidden ? "Edit Group Title":"Cancel Edit"}}'
      }
    >
      <Event
        enabled=""
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
      <View id="df7c7" viewKey="View 1">
        <TextInput
          id="group_title_input"
          label="Title"
          placeholder="Enter value"
          value="{{get_group.data.title}}"
        />
        <Button id="button1" styleVariant="solid" text="Save">
          <Event
            event="click"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="edit_group_title"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
      </View>
    </Container>
    <EditableNumber
      id="minimum_panel_members"
      currency="USD"
      editIcon="bold/interface-edit-write-1"
      hidden={'{{registry_metadata.data.registry_type != "labs"}}'}
      inputTooltip="`Enter` to save, `Esc` to cancel"
      label="Minimum Panel Members"
      labelCaption="Minimum number of labs which must be present to classify as a panel"
      labelWidth="80"
      placeholder="Enter value"
      showSeparators={true}
      showStepper={true}
      value="{{get_group.data.minimum_panel_members}}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="edit_minimum_panel_members"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </EditableNumber>
    <Include src="./src/AddGroupMember.rsx" />
    <Text id="text6" value="##### Group Members" verticalAlign="center" />
    <Table
      id="group_member_table"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ get_group_members.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      enableSaveActions={true}
      showBorder={true}
      showFooter={true}
      showHeader={true}
      style={{ background: "rgb(240, 244, 248)" }}
      toolbarPosition="bottom"
    >
      <Column
        id="d5c79"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        key="sequence"
        label="Sequence"
        placeholder="Enter value"
        position="center"
        size={86.171875}
      />
      <Column
        id="e5fc6"
        alignment="left"
        format="string"
        key="title"
        label="Product Title"
        placeholder="Enter value"
        position="center"
        size={279.8125}
      />
      <Column
        id="b4a2c"
        alignment="left"
        editable={false}
        format="string"
        hidden="true"
        key="uuid"
        label="UUID"
        placeholder="Enter value"
        position="center"
        size={273.75}
      />
      <Column
        id="0c57e"
        alignment="left"
        format="string"
        hidden="true"
        key="group_uuid"
        label="Group UUID"
        placeholder="Enter value"
        position="center"
        size={276.21875}
      />
      <Column
        id="c5a77"
        alignment="left"
        format="string"
        key="value_set"
        label="Value Set Title"
        placeholder="Enter value"
        position="center"
        size={385.828125}
        valueOverride="{{item.title}}"
      />
      <Column
        id="74405"
        alignment="left"
        format="string"
        hidden={'{{registry_metadata.data.registry_type != "vitals"}}'}
        key="ucum_ref_units"
        label="UCUM Ref Units"
        placeholder="Enter value"
        position="center"
        size={147.671875}
      />
      <Column
        id="bf383"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        hidden={'{{registry_metadata.data.registry_type != "vitals"}}'}
        key="ref_range_low"
        label="Ref Range Low"
        placeholder="Enter value"
        position="center"
        size={137.0625}
      />
      <Column
        id="02113"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        hidden={'{{registry_metadata.data.registry_type != "vitals"}}'}
        key="ref_range_high"
        label="Ref Range High"
        placeholder="Enter value"
        position="center"
        size={128.109375}
      />
      <Column
        id="fb29f"
        alignment="left"
        format="string"
        key="value_set"
        label="Value Set UUID"
        placeholder="Enter value"
        position="center"
        size={415.078125}
        valueOverride="{{item.uuid}}"
      />
      <Action
        id="b4c62"
        icon="bold/interface-arrows-up-alternate"
        label="Move Up"
      >
        <Event
          event="clickAction"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="move_group_member_up"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Action>
      <Action
        id="92421"
        icon="bold/interface-arrows-down-alternate"
        label="Move Down"
      >
        <Event
          event="clickAction"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="move_group_member_down"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Action>
      <Action
        id="ec496"
        hidden="false"
        icon="bold/interface-edit-pencil"
        label="Edit Member Row"
      >
        <Event
          event="clickAction"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="get_group"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="clickAction"
          method="open"
          params={{ ordered: [] }}
          pluginId="edit_group_member_modal"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Action>
      <Action
        id="eddc5"
        icon="bold/interface-delete-bin-2"
        label="Delete Group Member"
      >
        <Event
          event="clickAction"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="delete_group_member"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Action>
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
      />
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      />
    </Table>
    <Module
      id="bugReporting1"
      name="Bug Reporting"
      pageUuid="0eaa8960-b6d5-11ed-8108-eff60e0cb731"
    />
  </Frame>
</App>
