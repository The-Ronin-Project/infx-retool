<Container
  id="tabbedContainer1"
  currentViewKey="{{ self.viewKeys[0] }}"
  heightType="fixed"
  hoistFetching={true}
  showBody={true}
  showHeader={true}
  style={{
    ordered: [
      { background: "rgb(240, 244, 248)" },
      { headerBackground: "rgb(188, 204, 220)" },
    ],
  }}
>
  <Header>
    <Tabs
      id="tabs1"
      itemMode="static"
      navigateContainer={true}
      style={{
        ordered: [
          { unselectedText: "rgb(72, 101, 129)" },
          { selectedBackground: "rgba(240, 244, 248, 0.5)" },
        ],
      }}
      targetContainerId="tabbedContainer1"
      value="{{ self.values[0] }}"
    >
      <Option id="19e7d" value="Tab 1" />
      <Option id="6f38d" value="Tab 2" />
      <Option id="7924a" value="Tab 3" />
    </Tabs>
  </Header>
  <View id="69b0a" viewKey="View Registry">
    <TableLegacy
      id="registry_table"
      _columns={[
        "resource_type",
        "data_element",
        "tenant_id",
        "concept_map_uuid",
        "concept_map_title",
        "source_extension_url",
        "registry_uuid",
        "is_unique",
      ]}
      _columnVisibility={{
        ordered: [
          { concept_map_title: true },
          { concept_map_uuid: false },
          { value_set_uuid: false },
          { registry_uuid: false },
        ],
      }}
      _compatibilityMode={false}
      actionButtonPosition="right"
      actionButtons={[
        {
          ordered: [
            { actionButtonText: "Delete" },
            { actionButtonType: "runQuery" },
            { actionButtonQuery: "delete_registry_entry" },
            { actionButtonInternalUrlPath: "" },
            { actionButtonInternalUrlQuery: "" },
            { actionButtonUrl: "" },
            { actionButtonNewWindow: false },
            { actionButtonDisabled: "" },
          ],
        },
      ]}
      columnAlignment={{ ordered: [{ version: "center" }] }}
      columnColors={{
        ordered: [
          { value_set_uuid: "" },
          { is_unique: "" },
          { filename: "" },
          { data_element: "" },
          { profile: "" },
          { tenant: "" },
          { source_extention_url: "" },
          { source_extension_url: "" },
          { resource_type: "" },
          { name: "" },
          { sales: "" },
          { value_set_title: "" },
          { tenant_id: "" },
          { concept_map_uuid: "" },
          { original_data_element: "" },
          { version: "" },
          { profile_url: "" },
          { field: "" },
          { type: "" },
          { id: "" },
          { uuid: "" },
          { email: "" },
          { registry_uuid: "" },
          { concept_map_title: "" },
          { concept_map_version: "" },
        ],
      }}
      columnHeaderNames={{
        ordered: [
          { value_set_uuid: "Value Set uuid" },
          { data_element: "Data Element" },
          { profile: "Profile" },
          { source_extension_url: "Source Extension url" },
          { resource_type: "Resource Type" },
          { value_set_title: "Value Set Title" },
          { tenant_id: "Tenant id" },
          { concept_map_uuid: "Concept Map uuid" },
          { profile_url: "Profile url" },
          { field: "Field" },
          { type: "Type" },
          { registry_uuid: "Registry uuid" },
          { concept_map_title: "Concept Map Title" },
        ],
      }}
      columnWidths={[
        { object: { id: "tenant", value: 382.921875 } },
        { object: { id: "profile", value: 260.328125 } },
        { object: { id: "data_element", value: 213 } },
        { object: { id: "name", value: 191 } },
        { object: { id: "resource_type", value: 126 } },
        { object: { id: "profile_url", value: 510 } },
        { object: { id: "source_extension_url", value: 396.421875 } },
      ]}
      customButtonName=""
      data="{{view_all_registry.data}}"
      defaultSelectedRow="none"
      doubleClickToEdit={true}
      overflowType="scroll"
      showBoxShadow={false}
      showPaginationOnTop={true}
      style={{
        ordered: [
          { headerBackground: "rgb(217, 226, 236)" },
          { cellText: "rgb(16, 42, 67)" },
          { summaryText: "rgb(16, 42, 67)" },
          { headerText: "rgb(16, 42, 67)" },
          { toolbarText: "rgb(51, 78, 104)" },
        ],
      }}
    />
  </View>
  <View id="d7b26" viewKey="Add Concept Map to Registry">
    <Form
      id="add_form"
      disableSubmit="{{!resource_type_select.value || !data_element_input.value || concept_map_select.value === null || !source_extension_select.value}}"
      heightType="fixed"
      hoistFetching={true}
      requireValidation={true}
      showBody={true}
      showFooter={true}
      showHeader={true}
      style={{
        ordered: [
          { background: "rgb(240, 244, 248)" },
          { headerBackground: "rgb(217, 226, 236)" },
        ],
      }}
      styleContext={{ ordered: [{ textDark: "rgb(36, 59, 83)" }] }}
    >
      <Header>
        <Text
          id="formTitle1"
          _disclosedFields={{ array: [] }}
          value="#### Create New Data Normalization Registry Entry"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <Select
          id="resource_type_select"
          data="{{ get_resource_types.data }}"
          label="Resource Type:"
          labelWidth="32"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          values="{{ item }}"
        />
        <Select
          id="data_element_input"
          emptyMessage="No options"
          itemMode="static"
          label="Data Element:"
          labelCaption=" the prefix auto populates as {{ resource_type_select.value }}."
          overlayMaxHeight={375}
          placeholder="Select post prefix option"
          showSelectionIndicator={true}
        >
          <Option
            id="56a7a"
            label="category"
            value="{{ resource_type_select.value }}.category"
          />
          <Option
            id="1ce5f"
            label="class"
            value="{{ resource_type_select.value }}.class"
          />
          <Option
            id="b0754"
            label="code"
            value="{{ resource_type_select.value }}.code"
          />
          <Option
            id="bda7d"
            disabled={false}
            hidden={false}
            label="component.code"
            value="{{ resource_type_select.value }}.component.code"
          />
          <Option
            id="1ea0b"
            disabled={false}
            hidden={false}
            label="component.valueCodeableConcept"
            value="{{ resource_type_select.value }}.component.valueCodeableConcept"
          />
          <Option
            id="a10e6"
            disabled={false}
            hidden={false}
            label="status"
            value="{{ resource_type_select.value }}.status"
          />
          <Option
            id="9e28d"
            disabled={false}
            hidden={false}
            label="telecom.system"
            value="{{ resource_type_select.value }}.telecom.system"
          />
          <Option
            id="f98f0"
            disabled={false}
            hidden={false}
            label="telecom.use"
            value="{{ resource_type_select.value }}.telecom.use"
          />
          <Option
            id="c06c7"
            disabled={false}
            hidden={false}
            label="type"
            value="{{ resource_type_select.value }}.type"
          />
          <Option
            id="08d7a"
            disabled={false}
            hidden={false}
            label="valueCodeableConcept"
            value="{{ resource_type_select.value }}.valueCodeableConcept"
          />
        </Select>
        <Select
          id="tenant_id_select"
          itemMode="static"
          label="Tenant ID:"
          labelCaption="If Tenant ID is not listed, you must add it."
          labelWidth="32"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
        >
          <Option
            id="0ff19"
            disabled={false}
            hidden={false}
            label="App Orchard Sandbox"
            value="apposnd"
          />
          <Option
            id="b05df"
            disabled={false}
            hidden={false}
            label="Cerner Code Sandbox"
            value="ejh3j95h"
          />
          <Option id="6ea7e" label="mdaoc" value="mdaoc" />
          <Option
            id="2cce0"
            disabled={false}
            hidden={false}
            label="mda-tst"
            value="5jzj62vp"
          />
          <Option
            id="1dc65"
            disabled={false}
            hidden={false}
            label="p1941"
            value="ggwadc8y"
          />
          <Option
            id="3bd1c"
            disabled={false}
            hidden={false}
            label="psj"
            value="v7r1eczk"
          />
          <Option
            id="68a91"
            disabled={false}
            hidden={false}
            label="psj-tst"
            value="1xrekpx5"
          />
          <Option
            id="51aef"
            label="ronin
"
            value="ronin
"
          />
          <Option id="db55f" disabled={false} hidden={false} value="ronincer" />
          <Option
            id="526fb"
            disabled={false}
            hidden={false}
            label="roninstg"
            value="roninstg"
          />
        </Select>
        <Select
          id="concept_map_select"
          captionByIndex=""
          colorByIndex=""
          data="{{ concept_maps.data }}"
          disabledByIndex=""
          fallbackTextByIndex=""
          hiddenByIndex=""
          iconByIndex=""
          imageByIndex=""
          label="Concept Map:"
          labelCaption="This is the value of the title data element in the Concept Map resource."
          labels="{{ item.title }}"
          labelWidth="48"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          tooltipByIndex=""
          values=""
        />
        <Select
          id="source_extension_select"
          data="{{ get_urls.data }}"
          emptyMessage="No options"
          label="Source Extension URL"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          values="{{ item.extensionURLs }}"
        />
      </Body>
      <Footer>
        <Button
          id="formButton1"
          _disclosedFields={{ array: [] }}
          submit={true}
          submitTargetId="add_form"
          text="Submit"
        />
      </Footer>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="insert_concept_map_to_registry"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </View>
  <View
    id="ace12"
    disabled={false}
    hidden={false}
    iconPosition="left"
    viewKey="Add Value Set To Registry"
  >
    <Form
      id="add_form2"
      disableSubmit="{{!resource_type_select_vs_insert.value || !data_element_select.value || value_set_select.value === null || !profile_url_select.value }}"
      heightType="fixed"
      hoistFetching={true}
      requireValidation={true}
      showBody={true}
      showFooter={true}
      showHeader={true}
      style={{
        ordered: [
          { background: "rgb(240, 244, 248)" },
          { headerBackground: "rgb(217, 226, 236)" },
        ],
      }}
      styleContext={{ ordered: [{ textDark: "rgb(36, 59, 83)" }] }}
    >
      <Header>
        <Text
          id="formTitle2"
          _disclosedFields={{ array: [] }}
          value="#### Register Value Set"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <Select
          id="resource_type_select_vs_insert"
          allowCustomValue={true}
          captionByIndex=""
          colorByIndex=""
          data="{{ get_resource_types.data }}"
          disabledByIndex=""
          fallbackTextByIndex=""
          hiddenByIndex=""
          iconByIndex=""
          imageByIndex=""
          label="Resource Type:"
          labels=""
          labelWidth="32"
          overlayMaxHeight={375}
          placeholder="Select an option"
          required={true}
          showSelectionIndicator={true}
          tooltipByIndex=""
          values=""
        />
        <Select
          id="data_element_select"
          emptyMessage="No options"
          itemMode="static"
          label="Data Element:"
          labelCaption=" the prefix auto populates as {{  resource_type_select_vs_insert.value }}."
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
        >
          <Option
            id="b0754"
            label="category"
            value="{{ resource_type_select_vs_insert.value }}.category"
          />
          <Option
            id="56a7a"
            label="class"
            value="{{ resource_type_select_vs_insert.value }}.class"
          />
          <Option
            id="1ce5f"
            label="code"
            value="{{ resource_type_select_vs_insert.value }}.code"
          />
          <Option
            id="476c4"
            disabled={false}
            hidden={false}
            label="component.code"
            value="{{ resource_type_select_vs_insert.value }}.component.code"
          />
          <Option
            id="80da8"
            disabled={false}
            hidden={false}
            label="component:Concentration.valueCodeableConcept"
            value="{{  resource_type_select_vs_insert.value }}.component:Concentration.valueCodeableConcept"
          />
          <Option
            id="f8d77"
            disabled={false}
            hidden={false}
            label="component:diastolic.valueCodeableConcept"
            value="{{  resource_type_select_vs_insert.value }}.component:diastolic.valueCodeableConcept"
          />
          <Option
            id="23c1c"
            disabled={false}
            hidden={false}
            label="component:FlowRate.valueCodeableConcept"
            value="{{  resource_type_select_vs_insert.value }}.component:FlowRate.valueCodeableConcept"
          />
          <Option
            id="841b4"
            disabled={false}
            hidden={false}
            label="component:systolic.valueCodeableConcept"
            value="{{  resource_type_select_vs_insert.value }}.component:systolic.valueCodeableConcept"
          />
          <Option
            id="ace44"
            disabled={false}
            hidden={false}
            label="component.valueCodeableConcept"
            value="{{ resource_type_select_vs_insert.value }}.component.valueCodeableConcept"
          />
          <Option
            id="f8485"
            disabled={false}
            hidden={false}
            label="status"
            value="{{ resource_type_select_vs_insert.value }}.status"
          />
          <Option
            id="c52e3"
            disabled={false}
            hidden={false}
            label="telecom.system"
            value="{{ resource_type_select_vs_insert.value }}.telecom.system"
          />
          <Option
            id="c056b"
            disabled={false}
            hidden={false}
            label="telecom.use"
            value="{{ resource_type_select_vs_insert.value }}.telecom.use"
          />
          <Option
            id="83a33"
            disabled={false}
            hidden={false}
            label="type"
            value="{{ resource_type_select_vs_insert.value }}.type"
          />
          <Option
            id="671f4"
            disabled={false}
            hidden={false}
            label="valueCodeableConcept"
            value="{{ resource_type_select_vs_insert.value }}.valueCodeableConcept"
          />
          <Option
            id="68256"
            disabled={false}
            hidden={false}
            label="component:Concentration"
            value="{{ resource_type_select_vs_insert.value }}.component:Concentration"
          />
          <Option
            id="e99ee"
            disabled={false}
            hidden={false}
            label="component:FlowRate.code"
            value="{{ resource_type_select_vs_insert.value }}.component:FlowRate.code"
          />
          <Option
            id="bc4de"
            disabled={false}
            hidden={false}
            label="component:diastolic.code"
            value="{{  resource_type_select_vs_insert.value }}.component:diastolic.code"
          />
          <Option
            id="60be8"
            disabled={false}
            hidden={false}
            label="component:systolic.code"
            value="{{  resource_type_select_vs_insert.value }}.component:systolic.code"
          />
          <Option
            id="19681"
            disabled={false}
            hidden={false}
            label="extension:originalMedicationDatatype.valueCode"
            value="{{  resource_type_select_vs_insert.value }}.extension:originalMedicationDatatype.valueCode"
          />
        </Select>
        <Select
          id="tenant_id_vs_insert"
          itemMode="static"
          label="Tenant ID:"
          labelCaption="If Tenant ID is not listed, you must add it."
          labelWidth="32"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
        >
          <Option
            id="0ff19"
            disabled={false}
            hidden={false}
            label="App Orchard Sandbox"
            value="apposnd"
          />
          <Option
            id="b05df"
            disabled={false}
            hidden={false}
            label="Cerner Code Sandbox"
            value="ejh3j95h"
          />
          <Option id="6ea7e" label="mdaoc" value="mdaoc" />
          <Option
            id="15d63"
            disabled={false}
            hidden={false}
            label="mda-tst"
            value="5jzj62vp"
          />
          <Option
            id="cda26"
            disabled={false}
            hidden={false}
            label="p1941"
            value="ggwadc8y"
          />
          <Option
            id="3bd1c"
            disabled={false}
            hidden={false}
            label="psj"
            value="v7r1eczk"
          />
          <Option
            id="68a91"
            disabled={false}
            hidden={false}
            label="psj-tst"
            value="1xrekpx5"
          />
          <Option
            id="51aef"
            label="ronin
"
            value="ronin
"
          />
          <Option id="db55f" disabled={false} hidden={false} value="ronincer" />
          <Option
            id="526fb"
            disabled={false}
            hidden={false}
            label="roninstg"
            value="roninstg"
          />
        </Select>
        <Select
          id="value_set_select"
          captionByIndex=""
          colorByIndex=""
          data="{{ value_sets.data }}"
          disabledByIndex=""
          fallbackTextByIndex=""
          hiddenByIndex=""
          iconByIndex=""
          imageByIndex=""
          label="Value Set:"
          labels="{{ item.title }}"
          labelWidth="48"
          overlayMaxHeight={375}
          placeholder="Select an option"
          required={true}
          showSelectionIndicator={true}
          tooltipByIndex=""
          values="{{ item.uuid }}"
        />
        <Select
          id="profile_url_select"
          captionByIndex=""
          colorByIndex=""
          data="{{ get_urls.data }}"
          disabledByIndex=""
          emptyMessage="No options"
          fallbackTextByIndex=""
          hiddenByIndex=""
          iconByIndex=""
          imageByIndex=""
          label="Profile URL"
          labels=""
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          tooltipByIndex=""
          values="{{ item.profileURLs }}"
        >
          <Option id="b0754" value="Option 1" />
          <Option id="56a7a" value="Option 2" />
          <Option id="1ce5f" value="Option 3" />
        </Select>
      </Body>
      <Footer>
        <Button
          id="formButton2"
          _disclosedFields={{ array: [] }}
          submit={true}
          submitTargetId="add_form2"
          text="Submit"
        />
      </Footer>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="insert_value_set_to_registry"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </View>
  <View
    id="e2f3b"
    disabled={false}
    hidden={false}
    iconPosition="left"
    viewKey="Publish New Registry"
  >
    <Text
      id="text2"
      _disclosedFields={{ array: [] }}
      style={{ ordered: [{ color: "rgb(16, 42, 67)" }] }}
      value="#### The registry was last published: <br><br> {{get_datetime.data.last_modified}}"
      verticalAlign="center"
    />
    <Button
      id="publish_button"
      _disclosedFields={{ array: [] }}
      styleVariant="solid"
      text="Re-Publish Registry Now"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="publish_registry"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
  <Event
    enabled="{{tabs1.selectedLabel == 'View Registry'}}"
    event="change"
    method="trigger"
    params={{ ordered: [] }}
    pluginId="tab_trigger_query"
    type="datasource"
    waitMs="0"
    waitType="debounce"
  />
</Container>
