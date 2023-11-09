<Modal id="create_new_registry_modal" buttonText="Create New Registry">
  <TextInput
    id="title_input"
    label="Title
"
    placeholder="Enter value"
  />
  <TextInput
    id="registry_type_input"
    label="Registry Type"
    placeholder="Enter value"
  />
  <Select
    id="sorting_enabled_boolean"
    emptyMessage="No options"
    itemMode="static"
    label="Sorting Enabled
"
    overlayMaxHeight={375}
    placeholder="Select an option"
    showSelectionIndicator={true}
  >
    <Option id="5f275" value="true" />
    <Option id="76a44" value="false" />
  </Select>
  <Button id="save_new_registry" styleVariant="solid" text="Save New Registry">
    <Event
      event="click"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="create_new_registry"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
</Modal>
