<App>
  <Include src="./functions.rsx" />
  <Include src="./header.rsx" />
  <Frame id="$main" sticky={false} type="main">
    <Text
      id="text2"
      style={{ ordered: [] }}
      value="Latest expansion generated at {{load_expansion_metadata.data.timestamp}}"
      verticalAlign="center"
    />
    <ButtonWidget
      id="button2"
      events={[
        {
          ordered: [
            { event: "click" },
            { type: "datasource" },
            { method: "trigger" },
            { pluginId: "load_expansion_uuid" },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
        {
          ordered: [
            { event: "click" },
            { type: "datasource" },
            { method: "trigger" },
            { pluginId: "load_expansion_metadata" },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      value="Load Expansion"
    />
    <Button id="button4" styleVariant="solid" text="Download Expansion Report">
      <Event
        event="click"
        method="openUrl"
        params={{
          ordered: [
            {
              options: { ordered: [{ newTab: true }, { forceReload: false }] },
            },
            {
              url: "https://hashi.prod.projectronin.io/ValueSets/expansions/{{load_expansion_metadata.data.uuid}}/report",
            },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="button5"
      styleVariant="solid"
      text="View Diff From Previous Version"
    >
      <Event
        event="click"
        method="openApp"
        params={{
          ordered: [
            { uuid: "2852e280-638a-11ec-8b00-e7805aea3133" },
            {
              options: {
                ordered: [
                  {
                    queryParams: [
                      {
                        ordered: [
                          { key: "vs_name" },
                          { value: "{{value_set_version_metadata.data.name}}" },
                        ],
                      },
                      { ordered: [{ key: "" }, { value: "" }] },
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
    </Button>
    <ButtonWidget
      id="button3"
      disabled="{{ ['active', 'obsolete', 'retired'].includes(value_set_version_metadata.data.status[0])}}"
      events={[
        {
          ordered: [
            { event: "click" },
            { type: "datasource" },
            { method: "trigger" },
            { pluginId: "generate_expansion" },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      style={{ ordered: [{ "accent-background": "#6a6a6a" }] }}
      value="Generate New Expansion"
    />
    <Select
      id="select_term"
      captionByIndex=""
      colorByIndex=""
      data=""
      disabledByIndex=""
      fallbackTextByIndex=""
      hiddenByIndex=""
      iconByIndex=""
      imageByIndex=""
      itemMode="static"
      label="Select Terminology"
      labels=""
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      tooltipByIndex=""
      values=""
    >
      <Option
        id="70323"
        disabled={false}
        hidden={false}
        value="ICD 10 CM

"
      />
      <Option id="8745e" disabled={false} hidden={false} value="SNOMED" />
    </Select>
    <Select
      id="select_term_version"
      data="{{ load_terminology_versions.data }}"
      itemMode="static"
      label="Select Version"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
    >
      <Option
        id="725aa"
        value="2020
"
      />
      <Option
        id="eb407"
        value="2021
"
      />
      <Option
        id="9c95a"
        value="2022
"
      />
    </Select>
    <Text
      id="text3"
      value="**There are () concepts from this terminology version**"
      verticalAlign="center"
    />
    <TableLegacy
      id="table1"
      _compatibilityMode={false}
      columnColors={{
        ordered: [
          { expansion_uuid: "" },
          { code: "" },
          { display: "" },
          { system: "" },
          { version: "" },
          { uuid: "" },
        ],
      }}
      customButtonName=""
      data="{{load_expansion.data}}"
      doubleClickToEdit={true}
      showBoxShadow={false}
    />
    <TableLegacy
      id="summary_stats"
      _compatibilityMode={false}
      calculatedColumns={[
        "Custom Column 1",
        "Custom Column 2",
        "Custom Column 3",
      ]}
      columnColors={{
        ordered: [
          { terminology: "" },
          { count: "" },
          { "Custom Column 1": "" },
          { "Custom Column 2": "" },
          { "Custom Column 3": "" },
        ],
      }}
      customButtonName=""
      data={'[{"terminology":"SNOMED", "count":"100"}]'}
      doubleClickToEdit={true}
      showBoxShadow={false}
    />
  </Frame>
</App>
