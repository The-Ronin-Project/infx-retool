<App>
  <Include src="./functions.rsx" />
  <AppStyles id="$appStyles" css={include("./lib/$appStyles.css", "string")} />
  <Include src="./header.rsx" />
  <Frame
    id="$main"
    paddingType="normal"
    sticky={false}
    style={{ ordered: [{ canvas: "#f5f5f5" }] }}
    type="main"
  >
    <Text
      id="text64"
      _defaultValue=""
      _disclosedFields={{ array: [] }}
      style={{ ordered: [{ color: "rgba(72, 101, 129, 0.8)" }] }}
      value="#### Work in Progress for {{current_user.firstName}}"
      verticalAlign="center"
    />
    <Modal
      id="map_wip_modal"
      buttonText="All mapping WIP"
      modalHeight="568px"
      modalWidth="60%"
      style={{ ordered: [{ "accent-background": "rgba(60, 146, 220, 0.7)" }] }}
    >
      <Text
        id="text65"
        _disclosedFields={{ array: [] }}
        style={{ ordered: [{ color: "rgb(51, 78, 104)" }] }}
        value="#### Mapping WIP per project for all  users"
        verticalAlign="center"
      />
      <TableLegacy
        id="table1"
        _compatibilityMode={false}
        columnAlignment={{ ordered: [{ first_last_name: "left" }] }}
        columnFrozenAlignments={{ ordered: [{ first_last_name: null }] }}
        columnHeaderNames={{
          ordered: [
            { first_last_name: "Mapper" },
            { count: "Map Count" },
            { title: "Project Title" },
          ],
        }}
        columnWidths={[
          { object: { id: "count", value: 92.6640625 } },
          { object: { id: "first_last_name", value: 165.96875 } },
        ]}
        customButtonName=""
        data="{{ all_user_map_wip.data }}"
        doubleClickToEdit={true}
        overflowType="scroll"
        showBoxShadow={false}
        showDownloadButton={false}
        showPaginationOnTop={true}
      />
    </Modal>
    <Modal
      id="review_wip_modal"
      buttonText="All review WIP"
      modalWidth="60%"
      style={{ ordered: [{ "accent-background": "rgba(60, 146, 220, 0.7)" }] }}
    >
      <Text
        id="text66"
        _disclosedFields={{ array: [] }}
        style={{ ordered: [{ color: "rgb(51, 78, 104)" }] }}
        value="#### Review WIP per project for all  users"
        verticalAlign="center"
      />
      <TableLegacy
        id="table2"
        _compatibilityMode={false}
        columnHeaderNames={{
          ordered: [
            { count: "Review Count" },
            { first_last_name: "User" },
            { title: "Project Title" },
          ],
        }}
        columnWidths={[
          { object: { id: "first_last_name", value: 168.03125 } },
          { object: { id: "count", value: 116.53125 } },
        ]}
        customButtonName=""
        data="{{ all_user_review_wip.data }}"
        doubleClickToEdit={true}
        overflowType="scroll"
        showBoxShadow={false}
        showDownloadButton={false}
        showPaginationOnTop={true}
      />
    </Modal>
    <TableLegacy
      id="concepts_to_map_table"
      _columns={["Custom Column 1", "count", "title"]}
      _columnSummaryTypes={{ ordered: [{ "Custom Column 1": "" }] }}
      _columnSummaryValues={{ ordered: [{ "Custom Column 1": "" }] }}
      _columnVisibility={{
        ordered: [{ uuid: false }, { version_uuid: false }],
      }}
      _compatibilityMode={false}
      actionButtonColumnName="Go Map"
      calculatedColumns={["Custom Column 1"]}
      columnAlignment={{
        ordered: [{ "Custom Column 1": "left" }, { count: "right" }],
      }}
      columnColors={{
        ordered: [
          { count: "" },
          { title: "" },
          { version_uuid: "" },
          { "Custom Column 1": "" },
          { uuid: "" },
        ],
      }}
      columnEditable={{ ordered: [{ "Custom Column 1": false }] }}
      columnFormats={{ ordered: [{ "Custom Column 1": "button" }] }}
      columnHeaderNames={{
        ordered: [
          { title: "Project Title" },
          { count: "Map Count" },
          { "Custom Column 1": "Go Map" },
        ],
      }}
      columnMappers={{ ordered: [{ "Custom Column 1": "Go" }] }}
      columnTypeProperties={{
        ordered: [{ "Custom Column 1": { ordered: [{ openInNewTab: true }] } }],
      }}
      columnTypeSpecificExtras={{
        ordered: [
          {
            "Custom Column 1": {
              ordered: [
                { buttonType: "internal-url" },
                { internalUrlPath: "184659c0-4e4f-11ed-8a53-4f14117ffdcc" },
                {
                  internalUrlQuery:
                    '"[{\\"key\\":\\"concept_map_version_uuid\\",\\"value\\":\\"{{currentRow.version_uuid}}\\"}]"',
                },
              ],
            },
          },
        ],
      }}
      columnWidths={[
        { object: { id: "__retool__action_list", value: 56 } },
        { object: { id: "title", value: 333.8359375 } },
        { object: { id: "Custom Column 1", value: 74 } },
        { object: { id: "count", value: 89.1640625 } },
      ]}
      customButtonName=""
      data="{{ concept_map_mapper_counts.data }}"
      doubleClickToEdit={true}
      overflowType="scroll"
      showBoxShadow={false}
      showDownloadButton={false}
      showFilterButton={false}
      showRefreshButton={false}
      style={{ ordered: [{ headerBackground: "rgba(241, 243, 246, 0.9)" }] }}
    />
    <TableLegacy
      id="concepts_to_review_table"
      _columns={["Custom Column 1", "count", "title"]}
      _columnSummaryTypes={{ ordered: [{ "Custom Column 1": "" }] }}
      _columnSummaryValues={{ ordered: [{ "Custom Column 1": "" }] }}
      _columnVisibility={{ ordered: [{ version_uuid: false }] }}
      _compatibilityMode={false}
      actionButtonColumnName="Go Review"
      calculatedColumns={["Custom Column 1"]}
      columnAlignment={{ ordered: [{ "Custom Column 1": "left" }] }}
      columnColors={{
        ordered: [
          { count: "" },
          { title: "" },
          { version_uuid: "" },
          { "Custom Column 1": "" },
          { uuid: "" },
        ],
      }}
      columnEditable={{ ordered: [{ "Custom Column 1": false }] }}
      columnFormats={{ ordered: [{ "Custom Column 1": "button" }] }}
      columnHeaderNames={{
        ordered: [
          { title: "Project Title" },
          { count: "Review Count" },
          { "Custom Column 1": "Go Review" },
        ],
      }}
      columnMappers={{ ordered: [{ "Custom Column 1": "Go" }] }}
      columnTypeProperties={{
        ordered: [{ "Custom Column 1": { ordered: [{ openInNewTab: true }] } }],
      }}
      columnTypeSpecificExtras={{
        ordered: [
          {
            "Custom Column 1": {
              ordered: [
                { buttonType: "internal-url" },
                { internalUrlPath: "afb4d380-50cb-11ed-b76c-ffbcb400100c" },
                {
                  internalUrlQuery:
                    '"[{\\"key\\":\\"concept_map_version_uuid\\",\\"value\\":\\"{{currentRow.version_uuid}}\\"}]"',
                },
              ],
            },
          },
        ],
      }}
      columnWidths={[
        { object: { id: "__retool__action_list", value: 64 } },
        { object: { id: "title", value: 331.8359375 } },
        { object: { id: "Custom Column 1", value: 86 } },
        { object: { id: "count", value: 103.1640625 } },
      ]}
      customButtonName=""
      data="{{ concept_map_reviewer_counts.data }}"
      doubleClickToEdit={true}
      overflowType="scroll"
      showBoxShadow={false}
      showDownloadButton={false}
      showFilterButton={false}
      showRefreshButton={false}
      style={{ ordered: [{ headerBackground: "rgba(241, 243, 246, 0.9)" }] }}
    />
    <TableLegacy
      id="value_set_table"
      _columns={["Custom Column 1", "count", "title"]}
      _columnSummaryTypes={{ ordered: [{ "Custom Column 1": "" }] }}
      _columnSummaryValues={{ ordered: [{ "Custom Column 1": "" }] }}
      _columnVisibility={{
        ordered: [{ version_uuid: false }, { contact: false }],
      }}
      _compatibilityMode={false}
      actionButtonColumnName="Go Review"
      calculatedColumns={["Custom Column 1"]}
      columnAlignment={{ ordered: [{ "Custom Column 1": "left" }] }}
      columnColors={{
        ordered: [
          { title: "" },
          { contact: "" },
          { version_uuid: "" },
          { "Custom Column 1": "" },
          { count: "" },
          { uuid: "" },
        ],
      }}
      columnEditable={{ ordered: [{ "Custom Column 1": false }] }}
      columnFormats={{ ordered: [{ "Custom Column 1": "button" }] }}
      columnHeaderNames={{
        ordered: [
          { title: "Project Title" },
          { count: "Review Count" },
          { "Custom Column 1": "Pending Version" },
        ],
      }}
      columnMappers={{ ordered: [{ "Custom Column 1": "Go" }] }}
      columnTypeProperties={{
        ordered: [{ "Custom Column 1": { ordered: [{ openInNewTab: true }] } }],
      }}
      columnTypeSpecificExtras={{
        ordered: [
          {
            "Custom Column 1": {
              ordered: [
                { buttonType: "internal-url" },
                { internalUrlPath: "afb4d380-50cb-11ed-b76c-ffbcb400100c" },
                {
                  internalUrlQuery:
                    '"[{\\"key\\":\\"value_set_version_uuid\\",\\"value\\":\\"{{currentRow.version_uuid}}\\"}]"',
                },
              ],
            },
          },
        ],
      }}
      columnWidths={[
        { object: { id: "__retool__action_list", value: 64 } },
        { object: { id: "count", value: 103.1640625 } },
        { object: { id: "title", value: 403.8359375 } },
        { object: { id: "Custom Column 1", value: 110 } },
      ]}
      customButtonName=""
      data="{{value_set_work.data }}"
      doubleClickToEdit={true}
      overflowType="scroll"
      showBoxShadow={false}
      showDownloadButton={false}
      showFilterButton={false}
      showRefreshButton={false}
      style={{ ordered: [{ headerBackground: "rgba(241, 243, 246, 0.9)" }] }}
    />
    <Divider id="divider1" _disclosedFields={{ array: [] }} />
    <Text
      id="text55"
      _defaultValue=""
      _disclosedFields={{ array: [] }}
      style={{ ordered: [{ color: "rgba(98, 125, 152, 0.8)" }] }}
      value="#### Content Tools"
      verticalAlign="center"
    />
    <Container
      id="container7"
      heightType="fixed"
      hoistFetching={true}
      showBody={true}
      showHeader={true}
      style={{ ordered: [{ headerBackground: "rgb(240, 244, 248)" }] }}
    >
      <Header>
        <Button
          id="button8"
          _disclosedFields={{ array: [] }}
          horizontalAlign="left"
          iconBefore="bold/health-medical-house"
          style={{
            ordered: [
              { background: "rgba(64, 152, 215, 0.13)" },
              { label: "rgb(64, 152, 215)" },
            ],
          }}
          styleVariant="solid"
        >
          <Event
            event="click"
            method="openApp"
            params={{
              ordered: [{ uuid: "35347ac0-9bf4-11ec-bea5-53c1223dcd2f" }],
            }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <Text
          id="text11"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          style={{
            ordered: [
              { color: "rgb(36, 59, 83)" },
              { background: "" },
              { links: "" },
            ],
          }}
          value="#### **Concept Mapping Legacy**"
          verticalAlign="center"
        />
      </Header>
      <View id="e47d5" viewKey="View 1">
        <Text
          id="text10"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          style={{ ordered: [{ color: "rgba(36, 59, 83, 0.9)" }] }}
          value="<p>Browse, create, duplicate concept maps. Navigate to versions, manage assignmnets, map concepts, review mappings. </p>"
          verticalAlign="center"
        />
        <Link
          id="link1"
          _disclosedFields={{ array: [] }}
          iconAfter="bold/interface-arrows-right-alternate"
          showUnderline="never"
          style={{ ordered: [{ text: "rgb(38, 128, 194)" }] }}
          text="Open"
        >
          <Event
            event="click"
            method="openApp"
            params={{
              ordered: [{ uuid: "35347ac0-9bf4-11ec-bea5-53c1223dcd2f" }],
            }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
        </Link>
      </View>
    </Container>
    <Container
      id="container14"
      heightType="fixed"
      hoistFetching={true}
      showBody={true}
      showHeader={true}
      style={{ ordered: [{ headerBackground: "rgb(240, 244, 248)" }] }}
    >
      <Header>
        <Button
          id="button15"
          _disclosedFields={{ array: [] }}
          horizontalAlign="left"
          iconBefore="bold/health-medical-house"
          style={{
            ordered: [
              { background: "rgba(64, 152, 215, 0.13)" },
              { label: "rgb(64, 152, 215)" },
            ],
          }}
          styleVariant="solid"
        >
          <Event
            event="click"
            method="openApp"
            params={{
              ordered: [{ uuid: "2e4206c4-2228-11ec-99aa-e782eefccea2" }],
            }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <Text
          id="text26"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          style={{
            ordered: [
              { color: "rgb(36, 59, 83)" },
              { background: "" },
              { links: "" },
            ],
          }}
          value="#### **Value Sets Legacy**"
          verticalAlign="center"
        />
      </Header>
      <View id="e47d5" viewKey="View 1">
        <Text
          id="text25"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          style={{ ordered: [{ color: "rgba(36, 59, 83, 0.9)" }] }}
          value="<p>Browse, create, duplicate value sets. Navigate to versions. Generate and view expansions. </p>"
          verticalAlign="center"
        />
        <Link
          id="link11"
          _disclosedFields={{ array: [] }}
          iconAfter="bold/interface-arrows-right-alternate"
          showUnderline="never"
          style={{ ordered: [{ text: "rgb(38, 128, 194)" }] }}
          text="Open"
        >
          <Event
            event="click"
            method="openApp"
            params={{
              ordered: [{ uuid: "2e4206c4-2228-11ec-99aa-e782eefccea2" }],
            }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
        </Link>
      </View>
    </Container>
    <Container
      id="container24"
      heightType="fixed"
      hoistFetching={true}
      showBody={true}
      showHeader={true}
      style={{ ordered: [{ headerBackground: "rgb(240, 244, 248)" }] }}
    >
      <Header>
        <Button
          id="button25"
          _disclosedFields={{ array: [] }}
          horizontalAlign="left"
          iconBefore="bold/interface-file-clipboard-text"
          style={{
            ordered: [
              { background: "rgba(64, 152, 215, 0.09)" },
              { label: "rgb(64, 152, 215)" },
            ],
          }}
          styleVariant="solid"
        >
          <Event
            event="click"
            method="openApp"
            params={{
              ordered: [{ uuid: "e727eb80-1cdc-11ee-8b3b-57cb4117df38" }],
            }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <Text
          id="text47"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          style={{
            ordered: [
              { color: "rgb(36, 59, 83)" },
              { background: "" },
              { links: "" },
            ],
          }}
          value="#### **Use Cases and Teams**"
          verticalAlign="center"
        />
      </Header>
      <View id="e47d5" viewKey="View 1">
        <Text
          id="text46"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          style={{ ordered: [{ color: "rgba(36, 59, 83, 0.9)" }] }}
          value="<p>Browse and create use cases and teams. View value sets associated with use cases and teams associated with use cases. </p>"
          verticalAlign="center"
        />
        <Link
          id="link12"
          _disclosedFields={{ array: [] }}
          iconAfter="bold/interface-arrows-right-alternate"
          showUnderline="never"
          style={{ ordered: [{ text: "rgb(38, 128, 194)" }] }}
          text="Open"
        >
          <Event
            event="click"
            method="openApp"
            params={{
              ordered: [{ uuid: "e727eb80-1cdc-11ee-8b3b-57cb4117df38" }],
            }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
        </Link>
      </View>
    </Container>
    <Container
      id="container31"
      heightType="fixed"
      hoistFetching={true}
      showBody={true}
      showHeader={true}
      style={{ ordered: [{ headerBackground: "rgb(240, 244, 248)" }] }}
    >
      <Header>
        <Button
          id="button33"
          _disclosedFields={{ array: [] }}
          horizontalAlign="left"
          iconBefore="bold/interface-arrows-data-transfer-horizontal"
          style={{
            ordered: [
              { background: "rgba(64, 152, 215, 0.09)" },
              { label: "rgb(64, 152, 215)" },
            ],
          }}
          styleVariant="solid"
        >
          <Event
            event="click"
            method="openApp"
            params={{
              ordered: [{ uuid: "0402c8c0-42b1-11ee-9cc0-7b5a2eca8e28" }],
            }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <Text
          id="text69"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          style={{
            ordered: [
              { color: "rgb(36, 59, 83)" },
              { background: "" },
              { links: "" },
            ],
          }}
          value="#### **Flexible Registry**"
          verticalAlign="center"
        />
      </Header>
      <View id="e47d5" viewKey="View 1">
        <Text
          id="text68"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          style={{ ordered: [{ color: "rgba(36, 59, 83, 0.9)" }] }}
          value="<p>View and edit registries for labs, vitals, documents, etc. </p>"
          verticalAlign="center"
        />
        <Link
          id="link20"
          _disclosedFields={{ array: [] }}
          iconAfter="bold/interface-arrows-right-alternate"
          showUnderline="never"
          style={{ ordered: [{ text: "rgb(38, 128, 194)" }] }}
          text="Open"
        >
          <Event
            event="click"
            method="openApp"
            params={{
              ordered: [{ uuid: "0402c8c0-42b1-11ee-9cc0-7b5a2eca8e28" }],
            }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
        </Link>
      </View>
    </Container>
    <Container
      id="container33"
      heightType="fixed"
      hoistFetching={true}
      showBody={true}
      showHeader={true}
      style={{ ordered: [{ headerBackground: "rgb(240, 244, 248)" }] }}
    >
      <Header>
        <Button
          id="button35"
          _disclosedFields={{ array: [] }}
          horizontalAlign="left"
          iconBefore="bold/health-medical-house"
          style={{
            ordered: [
              { background: "rgba(64, 152, 215, 0.13)" },
              { label: "rgb(64, 152, 215)" },
            ],
          }}
          styleVariant="solid"
        >
          <Event
            event="click"
            method="openApp"
            params={{
              ordered: [{ uuid: "602561f8-c655-11ee-be5b-4bf2ff6362e9" }],
            }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <Text
          id="text73"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          style={{
            ordered: [
              { color: "rgb(36, 59, 83)" },
              { background: "" },
              { links: "" },
            ],
          }}
          value="#### **Concept Mapping CMv5**"
          verticalAlign="center"
        />
      </Header>
      <View id="e47d5" viewKey="View 1">
        <Text
          id="text72"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          style={{ ordered: [{ color: "rgba(36, 59, 83, 0.9)" }] }}
          value="<p>Browse, create, duplicate concept maps. Navigate to versions, manage assignmnets, map concepts, review mappings. </p>"
          verticalAlign="center"
        />
        <Link
          id="link22"
          _disclosedFields={{ array: [] }}
          iconAfter="bold/interface-arrows-right-alternate"
          showUnderline="never"
          style={{ ordered: [{ text: "rgb(38, 128, 194)" }] }}
          text="Open"
        >
          <Event
            event="click"
            method="openApp"
            params={{
              ordered: [{ uuid: "602561f8-c655-11ee-be5b-4bf2ff6362e9" }],
            }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
        </Link>
      </View>
    </Container>
    <Container
      id="container34"
      heightType="fixed"
      hoistFetching={true}
      showBody={true}
      showHeader={true}
      style={{ ordered: [{ headerBackground: "rgb(240, 244, 248)" }] }}
    >
      <Header>
        <Button
          id="button36"
          _disclosedFields={{ array: [] }}
          horizontalAlign="left"
          iconBefore="bold/health-medical-house"
          style={{
            ordered: [
              { background: "rgba(64, 152, 215, 0.13)" },
              { label: "rgb(64, 152, 215)" },
            ],
          }}
          styleVariant="solid"
        >
          <Event
            event="click"
            method="openApp"
            params={{
              ordered: [{ uuid: "618808d6-c658-11ee-b657-a3a078b45c0d" }],
            }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <Text
          id="text75"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          style={{
            ordered: [
              { color: "rgb(36, 59, 83)" },
              { background: "" },
              { links: "" },
            ],
          }}
          value="#### **Value Sets CMv5**"
          verticalAlign="center"
        />
      </Header>
      <View id="e47d5" viewKey="View 1">
        <Text
          id="text74"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          style={{ ordered: [{ color: "rgba(36, 59, 83, 0.9)" }] }}
          value="<p>Browse, create, duplicate value sets. Navigate to versions. Generate and view expansions. </p>"
          verticalAlign="center"
        />
        <Link
          id="link23"
          _disclosedFields={{ array: [] }}
          iconAfter="bold/interface-arrows-right-alternate"
          showUnderline="never"
          style={{ ordered: [{ text: "rgb(38, 128, 194)" }] }}
          text="Open"
        >
          <Event
            event="click"
            method="openApp"
            params={{
              ordered: [{ uuid: "618808d6-c658-11ee-b657-a3a078b45c0d" }],
            }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
        </Link>
      </View>
    </Container>
    <Text
      id="text61"
      _defaultValue=""
      _disclosedFields={{ array: [] }}
      style={{ ordered: [{ color: "rgba(98, 125, 152, 0.8)" }] }}
      value="#### System Tools"
      verticalAlign="center"
    />
    <Container
      id="container29"
      heightType="fixed"
      hoistFetching={true}
      showBody={true}
      showHeader={true}
      style={{ ordered: [{ headerBackground: "rgb(240, 244, 248)" }] }}
    >
      <Header>
        <Button
          id="button30"
          _disclosedFields={{ array: [] }}
          horizontalAlign="left"
          iconBefore="bold/interface-file-folder"
          style={{
            ordered: [
              { background: "rgba(64, 152, 215, 0.09)" },
              { label: "rgb(64, 152, 215)" },
            ],
          }}
          styleVariant="solid"
        >
          <Event
            event="click"
            method="openApp"
            params={{
              ordered: [{ uuid: "39347700-aacd-11ec-ae09-57783064a589" }],
            }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <Text
          id="text59"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          style={{
            ordered: [
              { color: "rgb(36, 59, 83)" },
              { background: "" },
              { links: "" },
            ],
          }}
          value="#### **Manage Terminology Versions Legacy**"
          verticalAlign="center"
        />
      </Header>
      <View id="e47d5" viewKey="View 1">
        <Text
          id="text58"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          style={{ ordered: [{ color: "rgba(36, 59, 83, 0.9)" }] }}
          value="<p>Browse, edit, add version, or create new terminology. </p>"
          verticalAlign="center"
        />
        <Link
          id="link18"
          _disclosedFields={{ array: [] }}
          iconAfter="bold/interface-arrows-right-alternate"
          showUnderline="never"
          style={{ ordered: [{ text: "rgb(38, 128, 194)" }] }}
          text="Open"
        >
          <Event
            event="click"
            method="openApp"
            params={{
              ordered: [{ uuid: "39347700-aacd-11ec-ae09-57783064a589" }],
            }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
        </Link>
      </View>
    </Container>
    <Container
      id="container28"
      heightType="fixed"
      hoistFetching={true}
      showBody={true}
      showHeader={true}
      style={{ ordered: [{ headerBackground: "rgb(240, 244, 248)" }] }}
    >
      <Header>
        <Button
          id="button29"
          _disclosedFields={{ array: [] }}
          horizontalAlign="left"
          iconBefore="bold/interface-arrows-data-transfer-horizontal"
          style={{
            ordered: [
              { background: "rgba(64, 152, 215, 0.09)" },
              { label: "rgb(64, 152, 215)" },
            ],
          }}
          styleVariant="solid"
        >
          <Event
            event="click"
            method="openApp"
            params={{
              ordered: [{ uuid: "963763e0-44e7-11ed-8353-1bcc90713a41" }],
            }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <Text
          id="text57"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          style={{
            ordered: [
              { color: "rgb(36, 59, 83)" },
              { background: "" },
              { links: "" },
            ],
          }}
          value="#### **Data Normalization Registry**"
          verticalAlign="center"
        />
      </Header>
      <View id="e47d5" viewKey="View 1">
        <Text
          id="text56"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          style={{ ordered: [{ color: "rgba(36, 59, 83, 0.9)" }] }}
          value="<p>View, add to, or publish new registry. </p>"
          verticalAlign="center"
        />
        <Link
          id="link17"
          _disclosedFields={{ array: [] }}
          iconAfter="bold/interface-arrows-right-alternate"
          showUnderline="never"
          style={{ ordered: [{ text: "rgb(38, 128, 194)" }] }}
          text="Open"
        >
          <Event
            event="click"
            method="openApp"
            params={{
              ordered: [{ uuid: "963763e0-44e7-11ed-8353-1bcc90713a41" }],
            }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
        </Link>
      </View>
    </Container>
    <Container
      id="container30"
      heightType="fixed"
      hoistFetching={true}
      showBody={true}
      showHeader={true}
      style={{ ordered: [{ headerBackground: "rgb(240, 244, 248)" }] }}
    >
      <Header>
        <Button
          id="button31"
          _disclosedFields={{ array: [] }}
          horizontalAlign="left"
          iconBefore="bold/interface-file-clipboard-text"
          style={{
            ordered: [
              { background: "rgba(64, 152, 215, 0.09)" },
              { label: "rgb(64, 152, 215)" },
            ],
          }}
          styleVariant="solid"
        >
          <Event
            event="click"
            method="openApp"
            params={{
              ordered: [{ uuid: "3890c4c0-0a9b-11ec-902a-57202d4ce0d0" }],
            }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <Text
          id="text63"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          style={{
            ordered: [
              { color: "rgb(36, 59, 83)" },
              { background: "" },
              { links: "" },
            ],
          }}
          value="#### **Survey Application**"
          verticalAlign="center"
        />
      </Header>
      <View id="e47d5" viewKey="View 1">
        <Text
          id="text62"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          style={{ ordered: [{ color: "rgba(36, 59, 83, 0.9)" }] }}
          value="<p>Browse and create question groups. </p>"
          verticalAlign="center"
        />
        <Link
          id="link19"
          _disclosedFields={{ array: [] }}
          iconAfter="bold/interface-arrows-right-alternate"
          showUnderline="never"
          style={{ ordered: [{ text: "rgb(38, 128, 194)" }] }}
          text="Open"
        >
          <Event
            event="click"
            method="openApp"
            params={{
              ordered: [{ uuid: "3890c4c0-0a9b-11ec-902a-57202d4ce0d0" }],
            }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
        </Link>
      </View>
    </Container>
    <Container
      id="container35"
      heightType="fixed"
      hoistFetching={true}
      showBody={true}
      showHeader={true}
      style={{ ordered: [{ headerBackground: "rgb(240, 244, 248)" }] }}
    >
      <Header>
        <Button
          id="button37"
          _disclosedFields={{ array: [] }}
          horizontalAlign="left"
          iconBefore="bold/interface-file-folder"
          style={{
            ordered: [
              { background: "rgba(64, 152, 215, 0.09)" },
              { label: "rgb(64, 152, 215)" },
            ],
          }}
          styleVariant="solid"
        >
          <Event
            event="click"
            method="openApp"
            params={{
              ordered: [{ uuid: "92aadfee-c6b0-11ee-8244-331eba6a4dad" }],
            }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <Text
          id="text77"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          style={{
            ordered: [
              { color: "rgb(36, 59, 83)" },
              { background: "" },
              { links: "" },
            ],
          }}
          value="#### **Manage Terminology Versions CMv5**"
          verticalAlign="center"
        />
      </Header>
      <View id="e47d5" viewKey="View 1">
        <Text
          id="text76"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          style={{ ordered: [{ color: "rgba(36, 59, 83, 0.9)" }] }}
          value="<p>Browse, edit, add version, or create new terminology. </p>"
          verticalAlign="center"
        />
        <Link
          id="link24"
          _disclosedFields={{ array: [] }}
          iconAfter="bold/interface-arrows-right-alternate"
          showUnderline="never"
          style={{ ordered: [{ text: "rgb(38, 128, 194)" }] }}
          text="Open"
        >
          <Event
            event="click"
            method="openApp"
            params={{
              ordered: [{ uuid: "92aadfee-c6b0-11ee-8244-331eba6a4dad" }],
            }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
        </Link>
      </View>
    </Container>
    <Text
      id="text31"
      _defaultValue=""
      _disclosedFields={{ array: [] }}
      style={{ ordered: [{ color: "rgba(98, 125, 152, 0.8)" }] }}
      value="#### Versioning Process"
      verticalAlign="center"
    />
    <Container
      id="container26"
      hoistFetching={true}
      showBody={true}
      showHeader={true}
      style={{ ordered: [{ headerBackground: "rgb(240, 244, 248)" }] }}
    >
      <Header>
        <Button
          id="button32"
          _disclosedFields={{ array: [] }}
          horizontalAlign="left"
          iconBefore="bold/interface-arrows-data-transfer-horizontal"
          style={{
            ordered: [
              { background: "rgba(64, 152, 215, 0.09)" },
              { label: "rgb(64, 152, 215)" },
            ],
          }}
          styleVariant="solid"
        >
          <Event
            event="click"
            method="openApp"
            params={{
              ordered: [{ uuid: "6d36efc0-dd5c-11ed-b5b5-5b8744ec5e35" }],
            }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <Text
          id="text67"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          style={{
            ordered: [
              { color: "rgb(36, 59, 83)" },
              { background: "" },
              { links: "" },
            ],
          }}
          value="#### **Value Set Termiology Update**"
          verticalAlign="center"
        />
      </Header>
      <View id="e47d5" viewKey="View 1">
        <Text
          id="text51"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          style={{ ordered: [{ color: "rgba(36, 59, 83, 0.9)" }] }}
          value="<p>Generate pre-terminology update report to identify value sets in need of attention before versioning. </p>"
          verticalAlign="center"
        />
        <Link
          id="link15"
          _disclosedFields={{ array: [] }}
          iconAfter="bold/interface-arrows-right-alternate"
          showUnderline="never"
          style={{ ordered: [{ text: "rgb(38, 128, 194)" }] }}
          text="Open"
        >
          <Event
            event="click"
            method="openApp"
            params={{
              ordered: [{ uuid: "6d36efc0-dd5c-11ed-b5b5-5b8744ec5e35" }],
            }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
        </Link>
      </View>
    </Container>
    <Container
      id="container32"
      heightType="fixed"
      hoistFetching={true}
      showBody={true}
      showHeader={true}
      style={{ ordered: [{ headerBackground: "rgb(240, 244, 248)" }] }}
    >
      <Header>
        <Button
          id="button34"
          _disclosedFields={{ array: [] }}
          horizontalAlign="left"
          iconBefore="bold/interface-arrows-synchronize-warning"
          style={{
            ordered: [
              { background: "rgba(64, 152, 215, 0.09)" },
              { label: "rgb(64, 152, 215)" },
            ],
          }}
          styleVariant="solid"
        >
          <Event
            event="click"
            method="openApp"
            params={{
              ordered: [{ uuid: "6d93c080-0492-11ee-b3a2-2ffed581f8ae" }],
            }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <Text
          id="text71"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          style={{
            ordered: [
              { color: "rgb(36, 59, 83)" },
              { background: "" },
              { links: "" },
            ],
          }}
          value="#### **Mapping Requests**"
          verticalAlign="center"
        />
      </Header>
      <View id="e47d5" viewKey="View 1">
        <Text
          id="text70"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          style={{ ordered: [{ color: "rgba(36, 59, 83, 0.9)" }] }}
          value="<p>View outstanding mapping requests, load outstanding codes, create new maps. </p>"
          verticalAlign="center"
        />
        <Link
          id="link21"
          _disclosedFields={{ array: [] }}
          iconAfter="bold/interface-arrows-right-alternate"
          showUnderline="never"
          style={{ ordered: [{ text: "rgb(38, 128, 194)" }] }}
          text="Open"
        >
          <Event
            event="click"
            method="openApp"
            params={{
              ordered: [{ uuid: "6d93c080-0492-11ee-b3a2-2ffed581f8ae" }],
            }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
        </Link>
      </View>
    </Container>
  </Frame>
</App>
