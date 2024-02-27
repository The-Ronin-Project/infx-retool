<App>
  <Include src="./functions.rsx" />
  <Frame id="$main" type="main">
    <TableLegacy
      id="class_members"
      _columns={["rela", "drugMember", "minConcept", "nodeAttr"]}
      _columnVisibility={{
        ordered: [
          { minConcept: true },
          { nodeAttr: true },
          { drugMember: true },
          { rela: true },
        ],
      }}
      _unfilteredSelectedIndex=""
      applyDynamicSettingsToColumnOrder={false}
      columnColors={{
        ordered: [
          { minConcept: "" },
          { nodeAttr: "" },
          { drugMember: "" },
          { rela: "" },
        ],
      }}
      columns={["rela", "drugMember", "minConcept", "nodeAttr"]}
      columnVisibility={{
        ordered: [
          { minConcept: true },
          { nodeAttr: true },
          { drugMember: true },
          { rela: true },
        ],
      }}
      customButtonName=""
      data="{{ getClassMembers.data.drugMemberGroup.drugMember}}"
      pageSize={9}
      showColumnBorders={true}
    />
    <Select
      id="select_source"
      allowDeselect={true}
      allowSearch={true}
      data="{{getSourcesofDrugClassRelations.data.relaSourceList.relaSourceName}}"
      label="Select classification source"
      labels="{{ _.startCase(item) }}"
      placeholder="Select an option"
      showSelectionIndicator={true}
      values="{{ item }}"
    />
    <TextInput
      id="ClassID"
      label="Enter a drug class ID"
      placeholder="Enter value"
    />
    <Select
      id="select_rela"
      allowDeselect={true}
      allowSearch={true}
      data="{{getRelas.data.relaList.rela}}"
      label="Select relationship "
      labels="{{ _.startCase(item) }}"
      placeholder="Select an option"
      showSelectionIndicator={true}
      values="{{ item }}"
    >
      <Event
        event="inputValueChange"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getClassMembers"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
    <Select
      id="trans"
      allowDeselect={true}
      allowSearch={true}
      data="['0', '1']"
      label="Direct or Indirect? (Direct = 0, Indirect = 1)"
      labels="{{ _.startCase(item) }}"
      placeholder="Select an option"
      showSelectionIndicator={true}
      value="'Indirect - all descendants'"
      values="{{ item }}"
    />
    <Multiselect
      id="term_type"
      allowSearch={true}
      data="{{getTermTypes.data.termTypeList.termType}}"
      label="Select one or more term types"
      labels="{{ _.startCase(item) }}"
      placeholder="Select multiple options"
      showSelectionIndicator={true}
      values="{{ item }}"
      wrapTags={true}
    />
    <Text
      id="text1"
      value="Make TTY selection an exclusion rule"
      verticalAlign="center"
    />
    <Button id="run_query" styleVariant="solid" text="Get Class Members">
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getClassMembers"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <TableLegacy
      id="related_info"
      _columns={["minConcept", "nodeAttr"]}
      _columnVisibility={{
        ordered: [{ minConcept: true }, { nodeAttr: true }],
      }}
      _unfilteredSelectedIndex=""
      applyDynamicSettingsToColumnOrder={false}
      columnColors={{ ordered: [{ minConcept: "" }, { nodeAttr: "" }] }}
      columns={["minConcept", "nodeAttr"]}
      columnVisibility={{ ordered: [{ minConcept: true }, { nodeAttr: true }] }}
      customButtonName=""
      data="{{extractRxcui.data}}"
      pageSize={5}
      showColumnBorders={true}
    />
  </Frame>
</App>
