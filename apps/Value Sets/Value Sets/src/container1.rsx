<Container id="container1" showBody={true} showHeader={true}>
  <Header>
    <Text id="containerTitle1" value="Use Cases" verticalAlign="center" />
    <Link
      id="link3"
      iconBefore="bold/interface-arrows-round-right"
      text="Refresh"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="load_all_use_cases_query"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Link>
  </Header>
  <View id="40616" viewKey="View 1">
    <Select
      id="primary_select"
      captionByIndex=""
      data="{{ load_all_use_cases_query.data }}"
      emptyMessage="No options"
      label="Primary Use Case"
      labels="{{ item.name }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showClear={true}
      showSelectionIndicator={true}
      values="{{ item.uuid }}"
    />
    <Multiselect
      id="secondary_multiselect"
      captionByIndex=""
      data="{{ load_all_use_cases_query.data }}"
      emptyMessage="No options"
      label="Secondary Use Case"
      labels="{{ item.name }}"
      overlayMaxHeight={375}
      placeholder="Select options"
      showClear={true}
      showSelectionIndicator={true}
      values="{{ item.uuid }}"
      wrapTags={true}
    />
    <Link
      id="link2"
      iconBefore="bold/interface-link-circle-alternate"
      text="Create new use case"
    >
      <Event
        event="click"
        method="openApp"
        params={{
          ordered: [
            { uuid: "e727eb80-1cdc-11ee-8b3b-57cb4117df38" },
            { options: { ordered: [{ newTab: true }] } },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Link>
  </View>
</Container>
