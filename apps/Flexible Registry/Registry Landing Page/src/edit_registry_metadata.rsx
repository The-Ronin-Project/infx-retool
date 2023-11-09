<Modal id="edit_registry_metadata" buttonText="Open Modal" hidden="true">
  <TextInput
    id="registry_type"
    label="Registry Type"
    placeholder="Enter value"
    value="{{registries.selectedRow.registry_type}}"
  />
  <TextInput
    id="title"
    label="Title"
    placeholder="Enter value"
    value="{{registries.selectedRow.title}}"
  />
  <Select
    id="sorting_enabled"
    emptyMessage="No options"
    itemMode="static"
    label="Sorting Enabled"
    overlayMaxHeight={375}
    placeholder="Select an option"
    showSelectionIndicator={true}
  >
    <Option id="eb69c" value="true" />
    <Option id="e668f" value="false" />
  </Select>
  <Button
    id="save_metadata_edit"
    styleVariant="solid"
    text="Save Metadata Changes"
  >
    <Event
      event="click"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="edit_metadata"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
</Modal>
