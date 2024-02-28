<Container
  id="useCaseEdit"
  hidden="{{!useCaseView.hidden}}"
  showBody={true}
  style={{ ordered: [{ border: "surfacePrimary" }] }}
>
  <Header>
    <Text
      id="containerTitle2"
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="9330a" viewKey="View 1">
    <Link
      id="link9"
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
    <Select
      id="primary_select"
      captionByIndex=""
      data="{{ load_all_use_cases_query.data }}"
      emptyMessage="No options"
      label="Primary Use Case"
      labels="{{ item.name }}"
      overlayMaxHeight={375}
      showClear={true}
      showSelectionIndicator={true}
      value="{{prepareCurrentPrimary.value.uuid}}"
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
      value="{{prepareCurrentSecondary.value}}"
      values="{{ item.uuid }}"
      wrapTags={true}
    />
    <Button id="save_use_cases" styleVariant="solid" text="Save">
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="overwrite_associations_query"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="clear_all_button"
      style={{
        ordered: [
          { background: "rgb(188, 204, 220)" },
          { label: "rgb(34, 34, 34)" },
        ],
      }}
      styleVariant="solid"
      text="Clear and leave blank"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="clear_and_leave_blank_query"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Link
      id="link8"
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
