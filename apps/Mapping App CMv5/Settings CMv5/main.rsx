<App>
  <Include src="./functions.rsx" />
  <AppStyles id="$appStyles" css="--retool-canvas-max-width: 10000px; " />
  <Include src="./header.rsx" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    paddingType="normal"
    sticky={null}
    type="main"
  >
    <Text id="text2" value="#### Project Settings" verticalAlign="center" />
    <Divider id="divider1" />
    <Switch
      id="auto_advance_mapping_switch"
      label="Auto-advance after mapping"
      value="{{load_settings.data.auto_advance_mapping[0]}}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="save_auto_advance_setting"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Switch>
    <Text
      id="text1"
      value="This will automatically mark an item from the mapping queue as complete and move to the next when a mapping is made. **It only makes sense when a project is restricted to one mapping per source.**"
      verticalAlign="center"
    />
    <Switch
      id="auto_fill_search_switch"
      label="Auto-fill search bar"
      value="{{load_settings.data.auto_fill_search[0]}}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="save_auto_fill_search_setting"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Switch>
    <Text
      id="text3"
      value="This will copy the source display to the search bar when a new source is selected for mapping. It is most useful when you expect the source and target displays to have similar wording."
      verticalAlign="center"
    />
    <Switch
      id="show_target_code_switch"
      label="Show target codes in mapping interface"
      value="{{load_settings.data.show_target_codes[0]}}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="save_show_target_code_setting"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Switch>
    <Text
      id="text4"
      value="This will display both the code and display in the mapping interface. For some terminologies, the code is a meaningless identifier (such as internal Chokuto cancer types, where it is a UUID) and mappers may want to hide it to save space in the interface."
      verticalAlign="center"
    />
    <Module
      id="bugReporting1"
      name="Bug Reporting"
      pageUuid="0eaa8960-b6d5-11ed-8108-eff60e0cb731"
    />
  </Frame>
</App>
