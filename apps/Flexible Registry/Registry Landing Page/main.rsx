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
    <Include src="./src/create_new_registry_modal.rsx" />
    <Text
      id="text2"
      value="**Select a registry to view or edit.**"
      verticalAlign="center"
    />
    <Table
      id="registries"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ get_registries.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      enableSaveActions={true}
      primaryKeyColumnId="ddf41"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="d8a41"
        alignment="left"
        editable="false"
        format="string"
        key="title"
        label="Title"
        placeholder="Enter value"
        position="center"
        size={355.703125}
      />
      <Column
        id="ddf41"
        alignment="left"
        editable="false"
        format="string"
        hidden="true"
        key="uuid"
        label="UUID"
        placeholder="Enter value"
        position="center"
        size={279.046875}
      />
      <Column
        id="6ece5"
        alignment="left"
        editable="false"
        format="tag"
        formatOptions={{ automaticColors: true }}
        key="registry_type"
        label="Registry type"
        placeholder="Select option"
        position="center"
        size={169.546875}
      />
      <Column
        id="4de24"
        alignment="left"
        format="boolean"
        key="sorting_enabled"
        label="Sorting enabled"
        placeholder="Enter value"
        position="center"
        size={108.375}
      />
      <Action
        id="084b8"
        icon="bold/interface-link-square-alternate"
        label="Go to registry"
      >
        <Event
          event="clickAction"
          method="openApp"
          params={{
            ordered: [
              { uuid: "e2acd320-3ab6-11ee-987c-7f06c8ab6b06" },
              {
                options: {
                  ordered: [
                    {
                      queryParams: [
                        {
                          ordered: [
                            { key: "registry_uuid" },
                            { value: "{{registries.selectedRow.uuid}}" },
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
      </Action>
      <Action
        id="dee7b"
        icon="bold/interface-edit-pencil"
        label="Edit Metadata"
      >
        <Event
          event="clickAction"
          method="open"
          params={{ ordered: [] }}
          pluginId="edit_registry_metadata"
          type="widget"
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
      >
        <Event
          event="clickToolbar"
          method="exportData"
          pluginId="registries"
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
          pluginId="registries"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <Event
        event="save"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="edit_metadata"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
    <Include src="./src/edit_registry_metadata.rsx" />
  </Frame>
</App>
