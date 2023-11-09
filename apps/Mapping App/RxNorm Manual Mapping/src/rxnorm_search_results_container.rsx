<Container
  id="rxnorm_search_results_container"
  currentViewKey="{{ self.viewKeys[0] }}"
  hoistFetching={true}
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text
      id="text2"
      value="RxNorm has identified the following as the closest match: "
      verticalAlign="center"
    />
    <Text
      id="best_match_info"
      value="{{search_rxnorm.data.top_rxcui}} | {{top_rxcui_name.data.properties.name}}"
      verticalAlign="center"
    />
    <Tabs
      id="tabs1"
      itemMode="static"
      navigateContainer={true}
      targetContainerId="rxnorm_search_results_container"
      value="{{ self.values[0] }}"
    >
      <Option id="e2b0f" value="Tab 1" />
      <Option id="80b4f" value="Tab 2" />
      <Option id="d465e" value="Tab 3" />
    </Tabs>
  </Header>
  <View
    id="b667b"
    label="Clinical Drug ({{search_rxnorm.data.results.SCD.length}})"
    viewKey="Clinical Drug"
  >
    <TableLegacy
      id="scd_table"
      _columns={[
        "language",
        "rxcui",
        "name",
        "suppress",
        "synonym",
        "tty",
        "umlscui",
      ]}
      _columnSummaryTypes={{ ordered: [{ rxcui: "" }] }}
      _columnSummaryValues={{ ordered: [{ rxcui: "" }] }}
      _columnVisibility={{
        ordered: [
          { strength: false },
          { rxtermsDoseForm: false },
          { rxnormDoseForm: false },
          { termType: false },
          { route: false },
          { displayName: false },
          { brandName: false },
          { fullGenericName: false },
          { suppress: false },
          { language: false },
          { umlscui: false },
          { tty: false },
          { fullName: false },
          { genericRxcui: false },
          { synonym: false },
        ],
      }}
      _compatibilityMode={false}
      actionButtons={[
        {
          ordered: [
            { actionButtonText: "Map Equivalent" },
            { actionButtonType: "runQuery" },
            { actionButtonQuery: "map_clinical_drug" },
            { actionButtonInternalUrlPath: "" },
            { actionButtonInternalUrlQuery: "" },
            { actionButtonUrl: "" },
            { actionButtonNewWindow: false },
            {
              actionButtonDisabled:
                "{{load_metadata.data.status == 'active' || load_metadata.data.status == 'retired' }}",
            },
          ],
        },
      ]}
      columnAlignment={{ ordered: [{ rxcui: "left" }] }}
      columnColors={{
        ordered: [
          { strength: "" },
          { rxtermsDoseForm: "" },
          { rxnormDoseForm: "" },
          { termType: "" },
          { route: "" },
          { name: "" },
          { displayName: "" },
          {
            rxcui:
              "{{search_rxnorm.data.top_rxcui == self ? '#C1E1C1' : 'white'}}",
          },
          { brandName: "" },
          { fullGenericName: "" },
          { suppress: "" },
          { language: "" },
          { umlscui: "" },
          { tty: "" },
          { fullName: "" },
          { genericRxcui: "" },
          { synonym: "" },
        ],
      }}
      columnFormats={{ ordered: [{ rxcui: "TextDataCell" }] }}
      columnMappers={{ ordered: [{ rxcui: "" }] }}
      columnTypeProperties={{ ordered: [{ rxcui: { ordered: [] } }] }}
      columnWidths={[
        { object: { id: "rxcui", value: 108.890625 } },
        { object: { id: "__retool__action_list", value: 124.890625 } },
      ]}
      customButtonName=""
      data="{{search_rxnorm.data.results.SCD}}"
      doubleClickToEdit={true}
      events={[
        {
          ordered: [
            { event: "rowClick" },
            { type: "widget" },
            { method: "setValue" },
            { pluginId: "rxcui_input" },
            { targetId: null },
            {
              params: {
                ordered: [{ value: "{{scd_table.selectedRow.data.rxcui}}" }],
              },
            },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      overflowType="scroll"
      showBoxShadow={false}
    />
  </View>
  <View
    id="7ae2f"
    label="Branded Drug ({{search_rxnorm.data.results.SBD.length}})"
    viewKey="Branded Drug"
  >
    <TableLegacy
      id="sbd_table"
      _columns={[
        "rxcui",
        "brandName",
        "displayName",
        "fullGenericName",
        "fullName",
        "genericRxcui",
        "route",
        "rxnormDoseForm",
        "rxtermsDoseForm",
        "strength",
        "suppress",
        "synonym",
        "termType",
      ]}
      _columnSummaryTypes={{ ordered: [{ rxcui: "" }] }}
      _columnSummaryValues={{ ordered: [{ rxcui: "" }] }}
      _columnVisibility={{
        ordered: [
          { strength: false },
          { rxtermsDoseForm: false },
          { rxnormDoseForm: false },
          { termType: false },
          { route: false },
          { displayName: false },
          { brandName: false },
          { fullGenericName: false },
          { suppress: false },
          { language: false },
          { umlscui: false },
          { tty: false },
          { fullName: false },
          { genericRxcui: false },
          { synonym: false },
        ],
      }}
      _compatibilityMode={false}
      actionButtons={[
        {
          ordered: [
            { actionButtonText: "Map Equivalent" },
            { actionButtonType: "runQuery" },
            { actionButtonQuery: "map_branded_drug" },
            { actionButtonInternalUrlPath: "" },
            { actionButtonInternalUrlQuery: "" },
            { actionButtonUrl: "" },
            { actionButtonNewWindow: false },
            { actionButtonDisabled: "" },
          ],
        },
      ]}
      columnAlignment={{ ordered: [{ rxcui: "left" }] }}
      columnColors={{
        ordered: [
          { strength: "" },
          { rxtermsDoseForm: "" },
          { rxnormDoseForm: "" },
          { termType: "" },
          { route: "" },
          { name: "" },
          { displayName: "" },
          {
            rxcui:
              "{{search_rxnorm.data.top_rxcui == self ? '#C1E1C1' : 'white'}}",
          },
          { brandName: "" },
          { fullGenericName: "" },
          { suppress: "" },
          { language: "" },
          { umlscui: "" },
          { tty: "" },
          { fullName: "" },
          { genericRxcui: "" },
          { synonym: "" },
        ],
      }}
      columnFormats={{ ordered: [{ rxcui: "TextDataCell" }] }}
      columnTypeProperties={{ ordered: [{ rxcui: { ordered: [] } }] }}
      columnWidths={[
        { object: { id: "rxcui", value: 143.3359375 } },
        { object: { id: "__retool__action_list", value: 122.99996948242188 } },
      ]}
      customButtonName=""
      data="{{ search_rxnorm.data.results.SBD }}"
      doubleClickToEdit={true}
      events={[
        {
          ordered: [
            { event: "rowClick" },
            { type: "widget" },
            { method: "setValue" },
            { pluginId: "rxcui_input" },
            { targetId: null },
            {
              params: {
                ordered: [{ value: "{{sbd_table.selectedRow.data.rxcui}}" }],
              },
            },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      overflowType="scroll"
      showBoxShadow={false}
    />
  </View>
  <View
    id="04a3d"
    label="Generic Pack ({{search_rxnorm.data.results.GPCK.length}})"
    viewKey="Generic Pack"
  >
    <TableLegacy
      id="gpck_table"
      _columns={[
        "rxcui",
        "brandName",
        "displayName",
        "fullGenericName",
        "fullName",
        "genericRxcui",
        "route",
        "rxnormDoseForm",
        "rxtermsDoseForm",
        "strength",
        "suppress",
        "synonym",
        "termType",
      ]}
      _columnSummaryTypes={{ ordered: [{ rxcui: "" }] }}
      _columnSummaryValues={{ ordered: [{ rxcui: "" }] }}
      _columnVisibility={{
        ordered: [
          { strength: false },
          { rxtermsDoseForm: false },
          { rxnormDoseForm: false },
          { termType: false },
          { route: false },
          { displayName: false },
          { brandName: false },
          { fullGenericName: false },
          { suppress: false },
          { language: false },
          { umlscui: false },
          { tty: false },
          { fullName: false },
          { genericRxcui: false },
          { synonym: false },
        ],
      }}
      _compatibilityMode={false}
      actionButtons={[
        {
          ordered: [
            { actionButtonText: "Map Equivalent" },
            { actionButtonType: "runQuery" },
            { actionButtonQuery: "map_generic_pack" },
            { actionButtonInternalUrlPath: "" },
            { actionButtonInternalUrlQuery: "" },
            { actionButtonUrl: "" },
            { actionButtonNewWindow: false },
            { actionButtonDisabled: "" },
          ],
        },
      ]}
      columnAlignment={{ ordered: [{ rxcui: "left" }] }}
      columnColors={{
        ordered: [
          { strength: "" },
          { rxtermsDoseForm: "" },
          { rxnormDoseForm: "" },
          { termType: "" },
          { route: "" },
          { name: "" },
          { displayName: "" },
          {
            rxcui:
              "{{search_rxnorm.data.top_rxcui == self ? '#C1E1C1' : 'white'}}",
          },
          { brandName: "" },
          { fullGenericName: "" },
          { suppress: "" },
          { language: "" },
          { umlscui: "" },
          { tty: "" },
          { fullName: "" },
          { genericRxcui: "" },
          { synonym: "" },
        ],
      }}
      columnFormats={{ ordered: [{ rxcui: "TextDataCell" }] }}
      columnTypeProperties={{ ordered: [{ rxcui: { ordered: [] } }] }}
      columnWidths={[
        { object: { id: "rxcui", value: 158.890625 } },
        { object: { id: "__retool__action_list", value: 138.890625 } },
      ]}
      customButtonName=""
      data="{{search_rxnorm.data.results.GPCK}}"
      doubleClickToEdit={true}
      events={[
        {
          ordered: [
            { event: "rowClick" },
            { type: "widget" },
            { method: "setValue" },
            { pluginId: "rxcui_input" },
            { targetId: null },
            {
              params: {
                ordered: [{ value: "{{gpck_table.selectedRow.data.rxcui}}" }],
              },
            },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      overflowType="scroll"
      showBoxShadow={false}
    />
  </View>
  <View
    id="92fd1"
    disabled={false}
    hidden={false}
    iconPosition="left"
    label="Branded Pack ({{search_rxnorm.data.results.BPCK.length}})"
    viewKey="Branded Pack"
  >
    <TableLegacy
      id="bpck_table"
      _columns={[
        "rxcui",
        "language",
        "name",
        "suppress",
        "synonym",
        "tty",
        "umlscui",
      ]}
      _columnSummaryTypes={{ ordered: [{ rxcui: "" }] }}
      _columnSummaryValues={{ ordered: [{ rxcui: "" }] }}
      _columnVisibility={{
        ordered: [
          { strength: false },
          { rxtermsDoseForm: false },
          { rxnormDoseForm: false },
          { termType: false },
          { route: false },
          { displayName: false },
          { brandName: false },
          { fullGenericName: false },
          { suppress: false },
          { language: false },
          { umlscui: false },
          { tty: false },
          { fullName: false },
          { genericRxcui: false },
          { synonym: false },
        ],
      }}
      _compatibilityMode={false}
      actionButtons={[
        {
          ordered: [
            { actionButtonText: "Map Equivalent" },
            { actionButtonType: "runQuery" },
            { actionButtonQuery: "map_branded_pack" },
            { actionButtonInternalUrlPath: "" },
            { actionButtonInternalUrlQuery: "" },
            { actionButtonUrl: "" },
            { actionButtonNewWindow: false },
            { actionButtonDisabled: "" },
          ],
        },
      ]}
      columnAlignment={{ ordered: [{ rxcui: "left" }] }}
      columnColors={{
        ordered: [
          { strength: "" },
          { rxtermsDoseForm: "" },
          { rxnormDoseForm: "" },
          { termType: "" },
          { route: "" },
          { name: "" },
          { displayName: "" },
          {
            rxcui:
              "{{search_rxnorm.data.top_rxcui == self ? '#C1E1C1' : 'white'}}",
          },
          { brandName: "" },
          { fullGenericName: "" },
          { suppress: "" },
          { language: "" },
          { umlscui: "" },
          { tty: "" },
          { fullName: "" },
          { genericRxcui: "" },
          { synonym: "" },
        ],
      }}
      columnFormats={{ ordered: [{ rxcui: "TextDataCell" }] }}
      columnTypeProperties={{ ordered: [{ rxcui: { ordered: [] } }] }}
      columnWidths={[
        { object: { id: "__retool__action_list", value: 133.890625 } },
        { object: { id: "rxcui", value: 93.390625 } },
      ]}
      customButtonName=""
      data="{{search_rxnorm.data.results.BPCK}}"
      doubleClickToEdit={true}
      events={[
        {
          ordered: [
            { event: "rowClick" },
            { type: "widget" },
            { method: "setValue" },
            { pluginId: "rxcui_input" },
            { targetId: null },
            {
              params: {
                ordered: [{ value: "{{bpck_table.selectedRow.data.rxcui}}" }],
              },
            },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      overflowType="scroll"
      showBoxShadow={false}
    />
  </View>
</Container>
