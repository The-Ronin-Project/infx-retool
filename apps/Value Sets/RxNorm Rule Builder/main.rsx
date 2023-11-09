<App>
  <Include src="./functions.rsx" />
  <Frame id="$main" sticky={false} type="main">
    <Select
      id="version_select"
      allowDeselect={true}
      data="{{ version_selection.data }}"
      label="Version Select"
      labels="{{ item.version }}"
      placeholder="Select an option"
      showSelectionIndicator={true}
      value="85d038ea-2857-11ec-9621-0242ac130002"
      values=""
    >
      <Option
        id="f10f7"
        disabled={false}
        hidden={false}
        value="85d038ea-2857-11ec-9621-0242ac130002"
      />
      <Option
        id="01d49"
        disabled={false}
        hidden={false}
        value="3dae1d22-06a1-4e60-98e7-42a2a241bf9d"
      />
    </Select>
    <TableLegacy
      id="table1"
      _columns={[
        "date",
        "content-type",
        "transfer-encoding",
        "connection",
        "server",
        "strict-transport-security",
        "x-xss-protection",
        "x-content-type-options",
        "x-frame-options",
        "x-cache-status",
        "access-control-allow-origin",
        "access-control-allow-headers",
        "minConcept",
      ]}
      _columnVisibility={{
        ordered: [
          { "x-xss-protection": true },
          { "access-control-allow-origin": true },
          { server: true },
          { "strict-transport-security": true },
          { "access-control-allow-headers": true },
          { "x-frame-options": true },
          { "content-type": true },
          { date: true },
          { "x-cache-status": true },
          { "x-content-type-options": true },
          { "transfer-encoding": true },
          { minConcept: true },
          { connection: true },
        ],
      }}
      applyDynamicSettingsToColumnOrder={false}
      columnColors={{
        ordered: [
          { "x-xss-protection": "" },
          { "access-control-allow-origin": "" },
          { server: "" },
          { "strict-transport-security": "" },
          { "access-control-allow-headers": "" },
          { "x-frame-options": "" },
          { "content-type": "" },
          { date: "" },
          { "x-cache-status": "" },
          { "x-content-type-options": "" },
          { "transfer-encoding": "" },
          { minConcept: "" },
          { connection: "" },
        ],
      }}
      columns={[
        "date",
        "content-type",
        "transfer-encoding",
        "connection",
        "server",
        "strict-transport-security",
        "x-xss-protection",
        "x-content-type-options",
        "x-frame-options",
        "x-cache-status",
        "access-control-allow-origin",
        "access-control-allow-headers",
        "minConcept",
      ]}
      columnVisibility={{
        ordered: [
          { "x-xss-protection": true },
          { "access-control-allow-origin": true },
          { server: true },
          { "strict-transport-security": true },
          { "access-control-allow-headers": true },
          { "x-frame-options": true },
          { "content-type": true },
          { date: true },
          { "x-cache-status": true },
          { "x-content-type-options": true },
          { "transfer-encoding": true },
          { minConcept: true },
          { connection: true },
        ],
      }}
      customButtonName=""
      data="{{getAllConceptsByTTY.data.minConceptGroup}}"
      pageSize={13}
    />
    <TabbedContainerWidget
      id="rule_input_container"
      tabNames={'["Drug Members Of Specified Class", "Concepts by Term Type"]'}
    >
      <Text
        id="text1"
        value="This workflow is intended to capture all drug members of a specified class. To better understand the drug classification sources and relationships within each classification source, refer to https://lhncbc.nlm.nih.gov/RxNav/APIs/api-RxClass.getClassMembers.html. 
"
        verticalAlign="center"
      />
      <Text
        id="text2"
        value="This workflow is intended to capture concepts that have a specified term type. Note that the results are from the RxNorm Current Prescribable Content, e.g. prescription drugs currently marketed in the US. 
"
        verticalAlign="center"
      />
      <Select
        id="classification_source"
        allowDeselect={true}
        captionByIndex=""
        data="{{getSourcesofDrugClassRelations.data.relaSourceList.relaSourceName}}"
        disabledByIndex=""
        hiddenByIndex=""
        label="Classification Source"
        labels="{{ _.startCase(item) }}"
        placeholder="Select an option"
        showSelectionIndicator={true}
        tooltipByIndex=""
        value=""
        values="{{item}}"
      >
        <Option id="5869b" disabled={false} hidden={false} value="Option 1" />
        <Event
          event="change"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="create_value_term_type_in_class"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Select>
      <Multiselect
        id="term_type"
        data="{{getTermTypes.data.termTypeList.termType}}  "
        label="Term Type"
        placeholder="Select options"
        showSelectionIndicator={true}
        wrapTags={true}
      >
        <Event
          event="change"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="create_value_term_type"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Multiselect>
      <TextInput
        id="drug_class_id_input"
        label="Drug Class ID"
        placeholder="Enter value"
      >
        <Event
          event="submit"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="create_value_term_type_in_class"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </TextInput>
      <TextInput
        id="description_for_term_type"
        label="Description"
        placeholder="Enter value"
      />
      <Select
        id="relationship"
        allowDeselect={true}
        data="{{getRelas.data.relaList.rela}}"
        label="Select relationship (optional)"
        labelWrap={true}
        placeholder="Select an option"
        showSelectionIndicator={true}
        values="{{item}}"
      />
      <Select
        id="trans"
        allowDeselect={true}
        itemMode="static"
        label="Direct or Indirect? (optional)"
        labelWrap={true}
        placeholder="Select an option"
        showSelectionIndicator={true}
      >
        <Option id="569bc" label="Direct descendants" value="0" />
        <Option id="b776a" label="Indirect - all descendants" value="1" />
      </Select>
      <Multiselect
        id="term_type_input"
        captionByIndex=""
        data="{{getTermTypes.data.termTypeList.termType}}"
        label="Term Types (optional)"
        labels={'["Branded Name", "brand"]'}
        placeholder="Select options"
        showSelectionIndicator={true}
        values="{{ item }}"
        wrapTags={true}
      >
        <Option id="ce403" value="IN" />
        <Option id="f3950" value="PIN" />
        <Event
          event="change"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="create_value_term_type_in_class"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Multiselect>
      <TextInput
        id="description_input"
        label="Rule Description (optional)"
        placeholder="Enter value"
      />
      <Button id="button2" styleVariant="solid" text="Save to Value Set ">
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="save_term_type_concepts_rule"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Button>
      <Button id="button1" styleVariant="solid" text="Save Rule to Value Set">
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="save_term_type_in_class_rule"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Button>
    </TabbedContainerWidget>
  </Frame>
</App>
