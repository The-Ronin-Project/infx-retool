<App>
  <Include src="./functions.rsx" />
  <Include src="./header.rsx" />
  <Frame id="$main" sticky={false} type="main">
    <Include src="./src/create_group_modal.rsx" />
    <Text id="text1" value="#### Groups" verticalAlign="center" />
    <Table
      id="group_table"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ get_groups.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      enableSaveActions={true}
      showBorder={true}
      showFooter={true}
      showHeader={true}
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
        size={74.171875}
      />
      <Column
        id="dfbda"
        alignment="left"
        editable="true"
        format="string"
        key="title"
        label="Group Title"
        placeholder="Enter value"
        position="center"
        size={137.625}
      />
      <Column
        id="2de43"
        alignment="left"
        editable={false}
        format="string"
        hidden="true"
        key="uuid"
        label="UUID"
        placeholder="Enter value"
        position="center"
        size={276.609375}
      />
      <Column
        id="33fd6"
        alignment="left"
        format="string"
        hidden="true"
        key="registry_uuid"
        label="Registry UUID"
        placeholder="Enter value"
        position="center"
        size={274.609375}
      />
      <Column
        id="76ecb"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        hidden="{{get_registry_metadata.data.registry_type!='labs'}}"
        key="minimum_panel_members"
        label="Minimum panel members"
        placeholder="Enter value"
        position="center"
        size={161.875}
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
          pluginId="move_group_up"
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
          pluginId="move_group_down"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Action>
      <Action
        id="ec496"
        hidden="false"
        icon="bold/interface-edit-write-1"
        label="View/Edit Group"
      >
        <Event
          event="clickAction"
          method="openApp"
          params={{
            ordered: [
              { uuid: "ebe9d8c0-3d3b-11ee-b47d-2fa6de34c303" },
              {
                options: {
                  ordered: [
                    {
                      queryParams: [
                        {
                          ordered: [
                            { key: "group_uuid" },
                            { value: "{{group_table.selectedRow.uuid}}" },
                          ],
                        },
                        {
                          ordered: [
                            { key: "registry_uuid" },
                            { value: "{{urlparams.registry_uuid}}" },
                          ],
                        },
                      ],
                    },
                    { newTab: false },
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
      </Action>
      <Action
        id="702eb"
        icon="bold/interface-delete-bin-2"
        label="Delete Group"
      >
        <Event
          event="clickAction"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="delete_group"
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
  </Frame>
</App>
