<Container
  id="tabbedContainer1"
  currentViewIndex={0}
  currentViewKey={0}
  disabled=""
  heightType="fixed"
  hidden={null}
  hoistFetching={true}
  maintainSpaceWhenHidden={null}
  overflowType="hidden"
  showBody={true}
  showHeader={true}
  showInEditor={null}
  transition="slide"
>
  <Header>
    <Tabs
      id="tabs1"
      itemMode="static"
      navigateContainer={true}
      targetContainerId="tabbedContainer1"
      value="{{ self.values[0] }}"
    >
      <Option id="ab595" value="Tab 1" />
      <Option id="75c7e" value="Tab 2" />
      <Option id="af509" value="Tab 3" />
    </Tabs>
  </Header>
  <View id="0" label="FHIR" viewKey={0}>
    <Select
      id="fhir_system_select"
      allowDeselect={true}
      data="{{ load_fhir_terminologies.data.terminology}}"
      label="FHIR System"
      placeholder="Select an option"
      showSelectionIndicator={true}
      values=""
    />
    <Select
      id="fhir_version_select"
      allowDeselect={true}
      data="{{ load_fhir_terminology_versions.data}}"
      label="Version"
      labels="{{item.version}}"
      placeholder="Select an option"
      showSelectionIndicator={true}
      value="{{ load_fhir_terminology_versions.data.version[0] }}"
      values="{{item.uuid}}"
    />
    <TableLegacy
      id="fhir_table"
      _columns={[
        "uuid",
        "code",
        "Custom Column 1",
        "display",
        "Custom Column 2",
        "definition",
        "version",
        "system_name",
        "system_url",
        "system_title",
        "level",
        "comments",
        "status",
        "terminology_version_uuid",
      ]}
      _columnVisibility={{
        ordered: [
          { display: true },
          { level: false },
          { system_title: false },
          { name: true },
          { sales: true },
          { code: false },
          { terminology_version_uuid: false },
          { status: false },
          { definition: true },
          { comments: false },
          { version: false },
          { id: true },
          { system_name: false },
          { uuid: false },
          { email: true },
          { system_url: false },
          { "Custom Column 1": true },
          { "Custom Column 2": true },
        ],
      }}
      applyDynamicSettingsToColumnOrder={false}
      calculatedColumns={["Custom Column 1", "Custom Column 2"]}
      columnAlignment={{
        ordered: [{ "Custom Column 1": "left" }, { "Custom Column 2": "left" }],
      }}
      columnColors={{
        ordered: [
          { display: "" },
          { level: "" },
          { system_title: "" },
          { name: "" },
          { sales: "" },
          { code: "" },
          { terminology_version_uuid: "" },
          { status: "" },
          { definition: "" },
          { comments: "" },
          { "Custom Column 1": "" },
          { "Custom Column 2": "" },
          { version: "" },
          { id: "" },
          { system_name: "" },
          { uuid: "" },
          { email: "" },
          { system_url: "" },
        ],
      }}
      columnEditable={{
        ordered: [{ "Custom Column 1": false }, { "Custom Column 2": false }],
      }}
      columnFormats={{
        ordered: [
          { "Custom Column 1": "modal" },
          { "Custom Column 2": "button" },
        ],
      }}
      columnHeaderNames={{
        ordered: [
          { "Custom Column 1": "More Information" },
          { "Custom Column 2": "map concept" },
        ],
      }}
      columnMappers={{
        ordered: [
          { "Custom Column 1": "More Info" },
          { "Custom Column 2": "Map" },
        ],
      }}
      columns={[
        "uuid",
        "code",
        "Custom Column 1",
        "display",
        "Custom Column 2",
        "definition",
        "version",
        "system_name",
        "system_url",
        "system_title",
        "level",
        "comments",
        "status",
        "terminology_version_uuid",
      ]}
      columnTypeSpecificExtras={{
        ordered: [
          {
            "Custom Column 2": {
              ordered: [
                { buttonType: "action" },
                { action: "map_fhir_concept" },
              ],
            },
          },
        ],
      }}
      columnVisibility={{
        ordered: [
          { display: true },
          { level: false },
          { system_title: false },
          { name: true },
          { sales: true },
          { code: false },
          { terminology_version_uuid: false },
          { status: false },
          { definition: true },
          { comments: false },
          { version: false },
          { id: true },
          { system_name: false },
          { uuid: false },
          { email: true },
          { system_url: false },
          { "Custom Column 1": true },
          { "Custom Column 2": true },
        ],
      }}
      columnWidths={[
        { object: { id: "display", value: 104.828125 } },
        { object: { id: "definition", value: 558.671875 } },
        { object: { id: "Custom Column 1", value: 119 } },
      ]}
      customButtonName="More Information"
      data="{{load_fhir_target_concepts.data}}"
      overflowType="scroll"
      pageSize={16}
      sortMappedValue={{ ordered: [{ "Custom Column 1": false }] }}
    >
      <KeyValueMap
        id="fhir_tab_modal_table"
        data="{{fhir_more_information.data}}"
        prevRowFormats={{ ordered: [] }}
        prevRowMappers={{ ordered: [] }}
        rows={[
          "a",
          "b",
          "c",
          "uuid",
          "code",
          "display",
          "definition",
          "version",
          "system_name",
          "system_url",
          "system_title",
          "level",
          "comments",
          "status",
          "terminology_version_uuid",
        ]}
        rowVisibility={{
          ordered: [
            { a: true },
            { b: true },
            { display: true },
            { c: true },
            { level: true },
            { system_title: true },
            { code: true },
            { terminology_version_uuid: true },
            { status: true },
            { definition: true },
            { comments: true },
            { version: true },
            { system_name: true },
            { uuid: true },
            { system_url: true },
          ],
        }}
      />
    </TableLegacy>
  </View>
  <View id="1" label="SNOMED CT" viewKey={1}>
    <TextInput
      id="snomed_search_input"
      label="Search"
      placeholder="Enter value"
    />
    <TableLegacy
      id="snomed_result_table"
      _columns={[
        "active",
        "fsn",
        "Custom Column 1",
        "conceptId",
        "pt",
        "effectiveTime",
        "moduleId",
        "definitionStatus",
        "id",
        "idAndFsnTerm",
      ]}
      _columnVisibility={{
        ordered: [
          { fsn: true },
          { associationTargets: false },
          { conceptId: true },
          { pt: false },
          { languageCode: false },
          { definitionStatus: false },
          { active: false },
          { moduleId: false },
          { concept: true },
          { name: true },
          { term: true },
          { sales: true },
          { module: false },
          { gciAxioms: false },
          { idAndFsnTerm: false },
          { inactivationIndicator: false },
          { effectiveTime: false },
          { "Custom Column 1": true },
          { releasedEffectiveTime: false },
          { descriptions: false },
          { id: false },
          { relationships: false },
          { classAxioms: false },
          { email: true },
          { validationResults: false },
          { released: false },
        ],
      }}
      applyDynamicSettingsToColumnOrder={false}
      calculatedColumns={["Custom Column 1"]}
      columnAlignment={{ ordered: [{ "Custom Column 1": "left" }] }}
      columnAllowOverflow={{
        ordered: [{ term: true }, { concept: true }, { fsn: true }],
      }}
      columnColors={{
        ordered: [
          { fsn: "" },
          { associationTargets: "" },
          { conceptId: "" },
          { pt: "" },
          { languageCode: "" },
          { definitionStatus: "" },
          { active: "" },
          { moduleId: "" },
          { concept: "" },
          { name: "" },
          { term: "" },
          { sales: "" },
          { module: "" },
          { gciAxioms: "" },
          { idAndFsnTerm: "" },
          { inactivationIndicator: "" },
          { effectiveTime: "" },
          { releasedEffectiveTime: "" },
          { descriptions: "" },
          { id: "" },
          { relationships: "" },
          { classAxioms: "" },
          { email: "" },
          { validationResults: "" },
          { released: "" },
        ],
      }}
      columnEditable={{
        ordered: [
          { validationResults: false },
          { concept: false },
          { "Custom Column 1": false },
        ],
      }}
      columnFormats={{ ordered: [{ "Custom Column 1": "button" }] }}
      columnHeaderNames={{ ordered: [{ "Custom Column 1": "map concept" }] }}
      columnMappers={{
        ordered: [{ fsn: "{{self.term}}" }, { "Custom Column 1": "Map" }],
      }}
      columns={[
        "active",
        "fsn",
        "Custom Column 1",
        "conceptId",
        "pt",
        "effectiveTime",
        "moduleId",
        "definitionStatus",
        "id",
        "idAndFsnTerm",
      ]}
      columnTypeSpecificExtras={{
        ordered: [
          {
            "Custom Column 1": {
              ordered: [
                { buttonType: "action" },
                { action: "map_snomed_concept" },
              ],
            },
          },
        ],
      }}
      columnVisibility={{
        ordered: [
          { fsn: true },
          { associationTargets: false },
          { conceptId: true },
          { pt: false },
          { languageCode: false },
          { definitionStatus: false },
          { active: false },
          { moduleId: false },
          { concept: true },
          { name: true },
          { term: true },
          { sales: true },
          { module: false },
          { gciAxioms: false },
          { idAndFsnTerm: false },
          { inactivationIndicator: false },
          { effectiveTime: false },
          { "Custom Column 1": true },
          { releasedEffectiveTime: false },
          { descriptions: false },
          { id: false },
          { relationships: false },
          { classAxioms: false },
          { email: true },
          { validationResults: false },
          { released: false },
        ],
      }}
      columnWidths={[
        { object: { id: "conceptId", value: 130.828125 } },
        { object: { id: "Custom Column 1", value: 97.34375 } },
      ]}
      customButtonName=""
      data="{{snowstorm_search.data.items}}"
      disableSorting={{ ordered: [{ fsn: true }, { conceptId: true }] }}
      pageSize={18}
    />
  </View>
  <View id="2" label="RxNorm" viewKey={2} />
  <View id="3" label="LOINC" viewKey={3}>
    <Module
      id="loincMappingModule1"
      cm_version=""
      map_comment=""
      name="LOINC Mapping Module"
      pageUuid="8ffcfd20-1542-11ed-8185-2b7f643c1822"
      relationship=""
      source_concept=""
    />
  </View>
  <View id="4" label="ICD-10 CM" viewKey={4}>
    <Module
      id="icd10CmMappingModule1"
      cm_version_uuid=""
      heightType="fixed"
      map_comments=""
      name="ICD-10-CM Mapping Module"
      pageUuid="0f85b940-1365-11ed-b473-eff0d0d30242"
      relationship=""
      showFetchingIndicator={false}
      source_concept=""
    />
    <Module
      id="icd10CmSearchModule1"
      heightType="fixed"
      name="ICD-10-CM Search Module"
      pageUuid="5bde7e00-b9e5-11ec-9271-3bb1f2b8f804"
      showFetchingIndicator={false}
    />
  </View>
  <View id="5" label="ICD-10 PCS" viewKey={5}>
    <Module
      id="icd10PcsMappingModule1"
      cm_version=""
      map_comment=""
      name="ICD-10-PCS mapping module"
      pageUuid="d6067b40-136f-11ed-b624-0b942afa711f"
      relationship=""
      source_concept=""
    />
  </View>
  <View id="6" label="CPT" viewKey={6}>
    <Text
      id="text1"
      value="search bar, table for results"
      verticalAlign="center"
    />
  </View>
  <View id="7" label="HCPCS" viewKey={7} />
  <View id="8" label="Custom Terminologies" viewKey={8}>
    <Select
      id="custom_terminology_selector"
      allowDeselect={true}
      data="{{ load_custom_terminologies.data.terminology}}"
      label="Custom Terminology"
      placeholder="Select an option"
      showSelectionIndicator={true}
      values=""
    />
    <Select
      id="custom_terminology_version_selector"
      allowDeselect={true}
      data="{{ load_custom_terminology_versions.data}}"
      label="Version"
      labels="{{item.version}}"
      placeholder="Select an option"
      showSelectionIndicator={true}
      value="{{ load_fhir_terminology_versions.data.version[0] }}"
      values="{{item.uuid}}"
    />
    <TableLegacy
      id="custom_terminology_table"
      _columns={[
        "uuid",
        "code",
        "Custom Column 1",
        "Custom Column 2",
        "display",
        "definition",
        "comments",
        "terminology_version_uuid",
      ]}
      _columnSummaryTypes={{
        ordered: [{ display: "" }, { code: "" }, { terminology_version: "" }],
      }}
      _columnSummaryValues={{
        ordered: [{ display: "" }, { code: "" }, { terminology_version: "" }],
      }}
      _columnVisibility={{
        ordered: [
          { display: true },
          { level: false },
          { system_title: false },
          { name: true },
          { sales: true },
          { code: true },
          { terminology_version_uuid: false },
          { status: false },
          { definition: true },
          { comments: false },
          { "Custom Column 1": true },
          { "Custom Column 2": true },
          { version: false },
          { id: true },
          { system_name: false },
          { uuid: false },
          { email: true },
          { system_url: false },
        ],
      }}
      _compatibilityMode={false}
      applyDynamicSettingsToColumnOrder={false}
      calculatedColumns={["Custom Column 1", "Custom Column 2"]}
      columnAlignment={{
        ordered: [
          { "Custom Column 1": "left" },
          { "Custom Column 2": "left" },
          { display: "left" },
          { code: "right" },
          { terminology_version: "right" },
        ],
      }}
      columnColors={{
        ordered: [
          { display: "" },
          { level: "" },
          { system_title: "" },
          { name: "" },
          { sales: "" },
          { terminology_version: "" },
          { code: "" },
          { terminology_version_uuid: "" },
          { status: "" },
          { definition: "" },
          { comments: "" },
          { "Custom Column 1": "" },
          { "Custom Column 2": "" },
          { version: "" },
          { id: "" },
          { system_name: "" },
          { uuid: "" },
          { email: "" },
          { system_url: "" },
        ],
      }}
      columnFormats={{
        ordered: [
          { "Custom Column 1": "ModalDataCell" },
          { "Custom Column 2": "button" },
          { display: "default" },
          { code: "default" },
          { terminology_version: "default" },
        ],
      }}
      columnHeaderNames={{
        ordered: [
          { "Custom Column 1": "More Information" },
          { "Custom Column 2": "map concept" },
        ],
      }}
      columnMappers={{
        ordered: [
          { "Custom Column 1": "More Info" },
          { "Custom Column 2": "Map" },
        ],
      }}
      columnMappersRenderAsHTML={{ ordered: [{ "Custom Column 2": false }] }}
      columns={[
        "uuid",
        "code",
        "Custom Column 1",
        "display",
        "Custom Column 2",
        "definition",
        "version",
        "system_name",
        "system_url",
        "system_title",
        "level",
        "comments",
        "status",
        "terminology_version_uuid",
      ]}
      columnTypeProperties={{
        ordered: [
          { "Custom Column 1": { ordered: [] } },
          { display: { ordered: [] } },
          {
            code: { ordered: [{ showSeparators: true }, { padDecimal: true }] },
          },
          {
            terminology_version: {
              ordered: [{ showSeparators: true }, { padDecimal: true }],
            },
          },
        ],
      }}
      columnTypeSpecificExtras={{
        ordered: [
          {
            "Custom Column 2": {
              ordered: [
                { buttonType: "action" },
                { action: "map_custom_terminology_concept" },
              ],
            },
          },
        ],
      }}
      columnVisibility={{
        ordered: [
          { display: true },
          { level: false },
          { system_title: false },
          { name: true },
          { sales: true },
          { code: false },
          { terminology_version_uuid: false },
          { status: false },
          { definition: true },
          { comments: false },
          { version: false },
          { id: true },
          { system_name: false },
          { uuid: false },
          { email: true },
          { system_url: false },
          { "Custom Column 1": true },
          { "Custom Column 2": true },
        ],
      }}
      columnWidths={[
        { object: { id: "definition", value: 558.671875 } },
        { object: { id: "Custom Column 1", value: 119 } },
        { object: { id: "Custom Column 2", value: 119 } },
        { object: { id: "display", value: 110.828125 } },
      ]}
      customButtonName="More Information"
      data="{{load_custom_terminology_target_concepts.data}}"
      defaultSortByColumn="display"
      overflowType="scroll"
      pageSize={16}
      sortByRawValue={{ ordered: [{ "Custom Column 1": true }] }}
      sortMappedValue={{ ordered: [{ "Custom Column 1": false }] }}
    >
      <KeyValueMap
        id="fhir_tab_modal_table3"
        data="{{fhir_more_information.data}}"
        prevRowFormats={{ ordered: [] }}
        prevRowMappers={{ ordered: [] }}
        rows={[
          "a",
          "b",
          "c",
          "uuid",
          "code",
          "display",
          "definition",
          "version",
          "system_name",
          "system_url",
          "system_title",
          "level",
          "comments",
          "status",
          "terminology_version_uuid",
        ]}
        rowVisibility={{
          ordered: [
            { a: true },
            { b: true },
            { display: true },
            { c: true },
            { level: true },
            { system_title: true },
            { code: true },
            { terminology_version_uuid: true },
            { status: true },
            { definition: true },
            { comments: true },
            { version: true },
            { system_name: true },
            { uuid: true },
            { system_url: true },
          ],
        }}
      />
    </TableLegacy>
  </View>
</Container>
