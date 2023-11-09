<Modal id="modal1" buttonText="manual_rule" hidden="true">
  <Text id="text27" value="**Manual Rule Addition**" verticalAlign="center" />
  <Switch id="include_switch1" label="Include" value="True" />
  <Select
    id="terminology_select5"
    itemMode="static"
    label="Terminology"
    overlayMaxHeight={375}
    placeholder="Select an option"
    showSelectionIndicator={true}
  >
    <Option id="7ff6e" value="Option 1" />
    <Option id="ae5f7" value="Option 2" />
    <Option id="307e2" value="Option 3" />
  </Select>
  <Select
    id="version_select6"
    itemMode="static"
    label="Version"
    overlayMaxHeight={375}
    placeholder="Select an option"
    showSelectionIndicator={true}
  >
    <Option id="7ff6e" value="Option 1" />
    <Option id="ae5f7" value="Option 2" />
    <Option id="307e2" value="Option 3" />
  </Select>
  <TextInput
    id="description_textInput5"
    label="Description"
    placeholder="Enter text"
  />
  <Select
    id="property_select7"
    itemMode="static"
    label="Property"
    overlayMaxHeight={375}
    placeholder="Select an option"
    showSelectionIndicator={true}
  >
    <Option id="7ff6e" value="Option 1" />
    <Option id="ae5f7" value="Option 2" />
    <Option id="307e2" value="Option 3" />
  </Select>
  <Select
    id="operator_select8"
    itemMode="static"
    label="Operator"
    overlayMaxHeight={375}
    placeholder="Select an option"
    showSelectionIndicator={true}
  >
    <Option id="7ff6e" value="Option 1" />
    <Option id="ae5f7" value="Option 2" />
    <Option id="307e2" value="Option 3" />
  </Select>
  <TextInput id="value_textInput6" label="Value" placeholder="Enter value" />
  <Button
    id="add_manual_rule_button"
    styleVariant="solid"
    text="Save Rule to Rule group"
  >
    <Event
      event="click"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="add_manual_rule"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="click"
      method="close"
      params={{ ordered: [] }}
      pluginId="modal1"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
</Modal>
