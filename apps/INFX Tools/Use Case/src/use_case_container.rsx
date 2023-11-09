<Container
  id="use_case_container"
  showBody={true}
  showHeader={true}
  style={{
    ordered: [
      { background: "rgba(240, 244, 248, 0.6)" },
      { headerBackground: "rgb(217, 226, 236)" },
    ],
  }}
  styleContext={{ ordered: [{ textDark: "rgb(16, 42, 67)" }] }}
>
  <Header>
    <Text id="containerTitle1" value="#### Use Cases" verticalAlign="center" />
  </Header>
  <View id="80620" viewKey="View 1">
    <Text
      id="text2"
      value="**Teams:** {{formatAssociatedTeams.value}}"
      verticalAlign="center"
    />
    <Table
      id="all_use_cases_table"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ get_use_cases.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      enableSaveActions={true}
      primaryKeyColumnId="e299f"
      rowHeight="medium"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      style={{
        background: "rgb(240, 244, 248)",
        headerBackground: "rgb(217, 226, 236)",
      }}
    >
      <Column
        id="c6168"
        alignment="left"
        format="string"
        key="name"
        label="Name"
        placeholder="Enter value"
        position="center"
        size={198.8125}
      />
      <Column
        id="415c0"
        alignment="left"
        format="string"
        key="description"
        label="Description"
        placeholder="Enter value"
        position="center"
        size={567}
      />
      <Column
        id="e299f"
        alignment="left"
        format="string"
        hidden="true"
        key="uuid"
        label="UUID"
        placeholder="Enter value"
        position="center"
        size={282.015625}
      />
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="refresh"
          pluginId="all_use_cases_table"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
    <Table
      id="associated_value_sets_table"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ get_value_sets.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      dynamicRowHeights={true}
      enableSaveActions={true}
      primaryKeyColumnId="3a64e"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      style={{
        background: "rgb(240, 244, 248)",
        headerBackground: "rgb(217, 226, 236)",
      }}
    >
      <Column
        id="be2cf"
        alignment="left"
        format="string"
        key="title"
        label="Title"
        placeholder="Enter value"
        position="center"
        size={170.890625}
      />
      <Column
        id="85ba4"
        alignment="left"
        format="string"
        key="description"
        label="Description"
        placeholder="Enter value"
        position="center"
        size={348}
      />
      <Column
        id="1691a"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        hidden="true"
        key="publisher"
        label="Publisher"
        placeholder="Select option"
        position="center"
        size={111}
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="fd86f"
        alignment="left"
        format="string"
        key="purpose"
        label="Purpose"
        placeholder="Enter value"
        position="center"
        size={236}
      />
      <Column
        id="14e05"
        alignment="left"
        format="tags"
        formatOptions={{ automaticColors: true }}
        hidden="true"
        key="use case names"
        label="Use case names"
        placeholder="Select options"
        position="center"
        size={110.671875}
      />
      <Column
        id="3a64e"
        alignment="left"
        format="string"
        hidden="true"
        key="uuid"
        label="UUID"
        placeholder="Enter value"
        position="center"
        size={279.828125}
      />
      <Action
        id="b80e1"
        icon="bold/travel-map-navigation-arrow-1"
        label="Go to"
      >
        <Event
          event="clickAction"
          method="openApp"
          params={{
            ordered: [
              { uuid: "4f31f1c8-2228-11ec-90d7-a387d41c775c" },
              {
                options: {
                  ordered: [
                    {
                      queryParams: [
                        {
                          ordered: [
                            { key: "uuid" },
                            {
                              value:
                                "{{associated_value_sets_table.selectedRow.uuid}}",
                            },
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
    </Table>
    <Modal
      id="modal1"
      buttonText="Create new use case"
      modalHeight="300"
      style={{
        ordered: [
          { "primary-surface": "rgb(240, 244, 248)" },
          { "primary-background": "" },
          { "primary-text": "rgb(16, 42, 67)" },
          { "accent-background": "rgba(60, 146, 220, 0.8)" },
        ],
      }}
    >
      <Form
        id="form1"
        requireValidation={true}
        resetAfterSubmit={true}
        showBody={true}
        showFooter={true}
        showHeader={true}
        style={{
          ordered: [
            { background: "" },
            { headerBackground: "rgb(217, 226, 236)" },
          ],
        }}
        styleContext={{ ordered: [{ textDark: "rgb(16, 42, 67)" }] }}
      >
        <Header>
          <Text
            id="formTitle1"
            value="#### Creat New Use Case"
            verticalAlign="center"
          />
        </Header>
        <Body>
          <TextInput
            id="name_input"
            formDataKey="name"
            label="Name"
            placeholder="Enter value"
            required={true}
          />
          <TextInput
            id="description_input"
            formDataKey="description"
            label="Description"
            placeholder="Enter value"
            required={true}
          />
          <Select
            id="status_select"
            emptyMessage="No options"
            formDataKey="status"
            itemMode="static"
            label="Status"
            labels={null}
            overlayMaxHeight={375}
            placeholder="Select an option"
            required={true}
            showSelectionIndicator={true}
            value="active"
            values={null}
          >
            <Option id="35028" value="active" />
          </Select>
        </Body>
        <Footer>
          <Button
            id="formButton1"
            submit={true}
            submitTargetId="form1"
            text="Create"
          />
        </Footer>
        <Event
          event="submit"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="create_new_use_case"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Form>
    </Modal>
  </View>
</Container>
