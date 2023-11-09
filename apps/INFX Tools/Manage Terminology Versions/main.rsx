<App>
  <Include src="./functions.rsx" />
  <Include src="./header.rsx" />
  <Frame id="$main" sticky={false} type="main">
    <TextInput
      id="search"
      _disclosedFields={{ array: [] }}
      hideLabel={false}
      label="Search Terminologies"
      placeholder="Enter term"
      showClear={true}
    />
    <Modal id="create_new_terminology" buttonText="Create New Terminology">
      <Include src="./src/container1.rsx" />
    </Modal>
    <TableLegacy
      id="terminologies"
      _columns={[
        "Custom Column 1",
        "terminology",
        "uuid",
        "version",
        "effective_start",
        "effective_end",
        "fhir_uri",
        "is_standard",
        "fhir_terminology",
      ]}
      _columnSummaryTypes={{
        ordered: [
          { "Custom Column 1": "" },
          { effective_end: "" },
          { version: "" },
        ],
      }}
      _columnSummaryValues={{
        ordered: [
          { "Custom Column 1": "" },
          { effective_end: "" },
          { version: "" },
        ],
      }}
      _columnVisibility={{
        ordered: [
          { effective_start: true },
          { effective_end: true },
          { fhir_terminology: true },
          { fhir_uri: true },
          { is_standard: true },
          { uuid: false },
        ],
      }}
      _compatibilityMode={false}
      actionButtonColumnName="''"
      actionButtonPosition="right"
      actionButtons={[
        {
          ordered: [
            { actionButtonQuery: "" },
            { actionButtonType: "copyToClipboard" },
            { actionButtonDisabled: "" },
            { actionButtonUrl: "" },
            { actionButtonNewWindow: false },
            { actionButtonInternalUrlPath: "" },
            { actionButtonText: "Copy UUID" },
            {
              actionButtonValueToCopy:
                "{{terminologies.selectedRow.data.uuid}}",
            },
            { actionButtonInternalUrlQuery: "" },
          ],
        },
        {
          ordered: [
            { actionButtonText: "View/Edit" },
            { actionButtonType: "openInternalUrl" },
            { actionButtonQuery: "" },
            {
              actionButtonInternalUrlPath:
                "2667f3c0-5961-11ed-8ca3-fb218bd3bd11",
            },
            {
              actionButtonInternalUrlQuery:
                '"[{\\"key\\":\\"uuid\\",\\"value\\":\\"{{terminologies.selectedRow.data.uuid}}\\"}]"',
            },
            { actionButtonUrl: "" },
            { actionButtonNewWindow: true },
            { actionButtonDisabled: "" },
          ],
        },
      ]}
      calculatedColumns={["Custom Column 1"]}
      columnAlignment={{
        ordered: [
          { "Custom Column 1": "left" },
          { effective_end: "left" },
          { "Custom Column 2": "left" },
          { version: "left" },
        ],
      }}
      columnColors={{
        ordered: [
          { effective_end: "" },
          { effective_start: "" },
          { is_standard: "" },
          { terminology: "" },
          { "Custom Column 1": "" },
          { fhir_uri: "" },
          { version: "" },
          { uuid: "" },
          { fhir_terminology: "" },
        ],
      }}
      columnEditable={{
        ordered: [{ "Custom Column 1": false }, { effective_end: true }],
      }}
      columnFormats={{
        ordered: [
          { "Custom Column 1": "ModalDataCell" },
          { effective_end: "DateDataCell" },
          { "Custom Column 2": "button" },
          { version: "TextDataCell" },
        ],
      }}
      columnHeaderNames={{
        ordered: [
          { effective_end: "Effective End" },
          { effective_start: "Effective Start" },
          { is_standard: "is standard" },
          { terminology: "Terminology" },
          { "Custom Column 1": "add" },
          { "Custom Column 2": "copy UUID" },
          { fhir_uri: "FHIR uri" },
          { version: "Version" },
          { fhir_terminology: "fhir terminology" },
        ],
      }}
      columnMappers={{
        ordered: [
          { "Custom Column 1": "New Version" },
          { "Custom Column 2": "Copy UUID" },
        ],
      }}
      columnTypeProperties={{
        ordered: [
          { "Custom Column 1": { ordered: [] } },
          { effective_end: { ordered: [{ dateFormat: "MMM d, yyyy" }] } },
          { version: { ordered: [] } },
        ],
      }}
      columnTypeSpecificExtras={{
        ordered: [
          {
            "Custom Column 2": {
              ordered: [
                { buttonType: "copy-to-clipboard" },
                { valueToCopy: "{{terminologies.selectedRow.data.uuid}}" },
              ],
            },
          },
        ],
      }}
      columnWidths={[
        { object: { id: "uuid", value: 290 } },
        { object: { id: "terminology", value: 269 } },
        { object: { id: "version", value: 93.578125 } },
        { object: { id: "effective_start", value: 108.40625 } },
        { object: { id: "effective_end", value: 117 } },
        { object: { id: "fhir_uri", value: 306 } },
        { object: { id: "is_standard", value: 92 } },
        { object: { id: "Custom Column 1", value: 96.3359375 } },
      ]}
      customButtonName=""
      data="{{load_terminologies.data}}"
      defaultSelectedRow="none"
      doubleClickToEdit={true}
      events={[
        {
          ordered: [
            { event: "saveChanges" },
            { type: "datasource" },
            { method: "trigger" },
            { pluginId: "edit_end_date" },
            { targetId: null },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      overflowType="scroll"
      showBoxShadow={false}
      showPaginationOnTop={true}
    >
      <Form
        id="form1"
        hoistFetching={true}
        requireValidation={true}
        resetAfterSubmit={true}
        showBody={true}
        showFooter={true}
        showHeader={true}
      >
        <Header>
          <Text
            id="formTitle1"
            _disclosedFields={{ array: [] }}
            value="#### New Version of Existing Terminology"
            verticalAlign="center"
          />
        </Header>
        <Body>
          <Text
            id="text1"
            _disclosedFields={{ array: [] }}
            style={{ ordered: [{ background: "rgba(165, 157, 157, 0)" }] }}
            value="New version of: "
            verticalAlign="center"
          />
          <Text
            id="text2"
            _disclosedFields={{ array: [] }}
            value="**{{ terminologies.selectedRow.data.terminology }}**"
            verticalAlign="center"
          />
          <TextInput
            id="new_version"
            _disclosedFields={{ array: [] }}
            label="Version"
            placeholder="Enter value"
          />
          <Text
            id="text4"
            _disclosedFields={{ array: [] }}
            value="* *Note: version of currently selected row is {{ terminologies.selectedRow.data.version}}*"
            verticalAlign="center"
          />
          <DateRange
            id="version_dates"
            _disclosedFields={{ array: [] }}
            dateFormat="MMM d, yyyy"
            endPlaceholder="End date"
            iconBefore="bold/interface-calendar-remove"
            label="Effective "
            startPlaceholder="Start date"
            textBetween="-"
            value={{ ordered: [{ start: "" }, { end: "" }] }}
          />
        </Body>
        <Footer>
          <Button
            id="submit_version"
            _disclosedFields={{ array: [] }}
            submit={true}
            submitTargetId="form1"
            text="Submit"
          />
        </Footer>
        <Event
          event="submit"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="add_new_version"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Form>
    </TableLegacy>
  </Frame>
</App>
