<Container
  id="Send_expanded_ValueSet_to_Simplifier"
  currentViewKey="{{ self.viewKeys[0] }}"
  heightType="fixed"
  hoistFetching={true}
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text
      id="text5"
      value="👋 **Hello {{ current_user.firstName || 'friend' }}!** Select a Valueset from the dropdown list below"
      verticalAlign="center"
    />
  </Header>
  <View id="e9557" label="Expanded valueset" viewKey="View 1">
    <Select
      id="Search"
      data="{{ value_set_dropdown.data }}"
      label="Valueset"
      labels="{{ item.name }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      values="{{ item.uuid }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="ValuesetExpansionCall"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="change"
        method="close"
        params={{ ordered: [] }}
        pluginId="modal1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
    <Button id="button1" styleVariant="solid" text="Send to Simplifier">
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="PutValueSetToSimplifier"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button id="button3" styleVariant="solid" text="Remove from Simplifier">
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetToken"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="DeleteValueSetFromSimplifier"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <TextArea
      id="results"
      autoResize={true}
      label="Expanded ValueSet in JSON Format"
      labelPosition="top"
      minLines={2}
      placeholder={'"Expanded ValueSet will appear here"'}
      value="{{ValuesetExpansionCall.data
}}"
    />
    <JSONEditor
      id="jsonEditor2"
      hidden="true"
      value="{{JSON.parse(results.value)}}"
    />
  </View>
  <View id="66107" label="ConceptMap" viewKey="View 2">
    <Button id="button4" styleVariant="solid" text="Remove from Simplifier">
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetToken"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="DeleteConceptMapFromSimplifier"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button id="button2" styleVariant="solid" text="Send to Simplifier">
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetToken"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="PutConceptMapToSimplifier"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <TextArea
      id="textArea1"
      autoResize={true}
      label="ConceptMap in JSON format"
      labelPosition="top"
      minLines={2}
      placeholder={'"ConceptMap will appear here"'}
      value="{{ConceptMapJSONCall.data
}}"
    />
    <JSONEditor
      id="jsonEditor1"
      hidden="true"
      value="{{JSON.parse(textArea1.value)}}"
    />
  </View>
  <View
    id="2c508"
    disabled={false}
    hidden={false}
    iconPosition="left"
    viewKey="CodeSystem"
  />
</Container>
