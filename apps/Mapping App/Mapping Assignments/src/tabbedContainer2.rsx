<Container
  id="tabbedContainer2"
  currentViewKey="{{ self.viewKeys[0] }}"
  heightType="fixed"
  hoistFetching={true}
  showBody={true}
  showHeader={true}
>
  <Header>
    <Tabs
      id="tabs2"
      itemMode="static"
      navigateContainer={true}
      targetContainerId="tabbedContainer2"
      value="{{ self.values[0] }}"
    >
      <Option id="06b91" value="Tab 1" />
      <Option id="5dabf" value="Tab 2" />
      <Option id="9419a" value="Tab 3" />
    </Tabs>
  </Header>
  <View id="060cb" viewKey="Assign by Matching Displays">
    <TextInput id="query" label="Match Source Display" placeholder="%query%" />
    <Text
      id="match_text"
      value="##### **{{query.value}}** matches {{query_count_total.data.match_count}} concepts and {{query_count_unassigned.data.match_count}} of those are unassigned concepts"
      verticalAlign="center"
    />
    <Select
      id="mapper"
      data="{{ user_options.data }}"
      label="Mapper"
      labels="{{ `${item.first_name} ${item.last_name}` }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      values="{{ item.uuid }}"
    />
    <Select
      id="reviewer"
      captionByIndex=""
      data="{{ user_options.data }}"
      label="Reviewer"
      labelCaption="optional"
      labels="{{ `${item.first_name} ${item.last_name}` }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      values="{{ item.uuid }}"
    />
    <Button
      id="assign_match"
      disabled="{{mapper.value==null || query.value == '' || load_metadata.data.status == 'active' || load_metadata.data.status == 'retired'|| query_count_unassigned.data.match_count == 0}}"
      styleVariant="solid"
      text="Assign {{query_count_unassigned.data.match_count}} unassigned concepts to {{mapper.selectedLabel}} for Mapping and to {{reviewer.selectedLabel}} for review"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="make_assignment_display_match"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
  <View id="22710" viewKey="Random Assignment">
    <NumberInput
      id="random_assign_number"
      currency="USD"
      inputValue={0}
      label="Number of random concepts to assign"
      placeholder="Enter value"
      showSeparators={true}
      showStepper={true}
      value="100"
    />
    <Select
      id="mapper2"
      data="{{ user_options.data }}"
      label="Mapper"
      labels="{{ `${item.first_name} ${item.last_name}` }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      values="{{ item.uuid }}"
    />
    <Select
      id="reviewer2"
      data="{{ user_options.data }}"
      label="Reviewer"
      labels="{{ `${item.first_name} ${item.last_name}` }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      values="{{ item.uuid }}"
    />
    <Button
      id="assign_random"
      disabled="{{mapper2.value==null || load_metadata.data.status == 'active' || load_metadata.data.status == 'retired'}} "
      styleVariant="solid"
      text="Assign {{random_assign_number.value}} random concepts to {{mapper2.selectedLabel}} for Mapping and to {{reviewer2.selectedLabel}} for Review"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="timestamp"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="make_assignment_random"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
</Container>
