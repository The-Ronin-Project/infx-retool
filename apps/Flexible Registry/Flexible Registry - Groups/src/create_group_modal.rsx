<Modal
  id="create_group_modal"
  buttonText="Create New Group"
  modalHeight="300"
  modalWidth="60%"
>
  <TextInput
    id="group_title_input"
    label="Title"
    labelWidth="50"
    placeholder="Enter value"
  />
  <NumberInput
    id="minimum_panel_members_input"
    currency="USD"
    hidden={'{{get_registry_metadata.data.registry_type != "labs"}}'}
    inputValue={0}
    label="Minimum Panel Members"
    labelCaption="Minimum number of labs which must be present to classify as a panel"
    labelWidth="70"
    placeholder="Enter value"
    showSeparators={true}
    showStepper={true}
    value={0}
  />
  <Button
    id="add_group_button"
    styleVariant="solid"
    text="Add Group to Registry"
  >
    <Event
      event="click"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="add_group"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="click"
      method="close"
      params={{ ordered: [] }}
      pluginId="create_group_modal"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
</Modal>
