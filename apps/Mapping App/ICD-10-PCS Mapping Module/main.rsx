<App>
  <Include src="./functions.rsx" />
  <GlobalWidgetProp id="cm_version" defaultValue="{{urlparams.uuid}}" />
  <GlobalWidgetProp id="map_comment" defaultValue="{{mapcomments.value}}" />
  <GlobalWidgetProp
    id="relationship"
    defaultValue="{{relationship_selection.value}}"
  />
  <GlobalWidgetProp
    id="source_concept"
    defaultValue="{{source_concepts.selectedRow.data.uuid}}"
  />
  <Frame id="$main" type="main">
    <ModuleContainerWidget
      id="moduleContainer"
      backgroundColor="white"
      isGlobalWidgetContainer={true}
    >
      <ContainerWidget id="pcs_search" title="ICD-10 PCS">
        <Select
          id="version_select"
          allowDeselect={true}
          captionByIndex=""
          data="{{ load_icd_10_pcs_versions.data }}"
          disabledByIndex=""
          hiddenByIndex=""
          label="Version Select:"
          labels="{{item.version}}"
          placeholder="Select a version"
          showSelectionIndicator={true}
          tooltipByIndex=""
          value="{{load_icd_10_pcs_versions.data.version[0]}}"
          values="{{item.uuid}}"
        />
        <Multiselect
          id="pcs_section"
          allowSearch={true}
          data="{{section_select.data.section}}"
          label="PCS Section:"
          labels="{{ _.startCase(item) }}"
          placeholder="Select multiple options"
          showSelectionIndicator={true}
          values="{{ item }}"
          wrapTags={true}
        >
          <Event
            event="change"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="prepare_rule_preview"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Multiselect>
        <Multiselect
          id="body_system"
          allowSearch={true}
          data="{{body_system_select.data.body_system}}"
          label="Body System:"
          labels="{{ _.startCase(item) }}"
          placeholder="Select multiple options"
          showSelectionIndicator={true}
          values="{{item}}"
          wrapTags={true}
        >
          <Event
            event="change"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="prepare_rule_preview"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Multiselect>
        <Multiselect
          id="root_operation"
          allowSearch={true}
          data="{{root_operation_select.data.root_operation}}"
          label="Root Operation:"
          labels="{{ _.startCase(item) }}"
          placeholder="Select multiple options"
          showSelectionIndicator={true}
          values="{{ item }}"
          wrapTags={true}
        >
          <Event
            event="change"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="prepare_rule_preview"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Multiselect>
        <MultiselectListbox
          id="body_part"
          data="{{body_part_select.data.body_part}}"
          label="Body Part:"
          labelPosition="top"
          labels="{{ _.startCase(item) }}"
          showActions={true}
          showSelectionIndicator={true}
          value="{{ self.values.slice(0, 1) }}"
          values=""
        >
          <Event
            event="change"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="prepare_rule_preview"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </MultiselectListbox>
        <MultiselectListbox
          id="approach_select"
          data="{{approach_select_1.data.approach}}"
          label="Approach:"
          labelPosition="top"
          labels="{{ _.startCase(item) }}"
          showActions={true}
          showSelectionIndicator={true}
          value="{{ self.values.slice(0, 1) }}"
          values="{{ item }}"
        >
          <Event
            event="change"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="prepare_rule_preview"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </MultiselectListbox>
        <MultiselectListbox
          id="qualifier_select"
          data="{{qualifier_select_1.data.qualifier}}"
          label="Qualifier:"
          labelPosition="top"
          labels="{{ _.startCase(item) }}"
          showActions={true}
          showSelectionIndicator={true}
          value="{{ self.values.slice(0, 1) }}"
          values="{{ item }}"
        >
          <Event
            event="change"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="prepare_rule_preview"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </MultiselectListbox>
        <MultiselectListbox
          id="device_select"
          data="{{device_select_1.data.device}}"
          label="Device:"
          labelPosition="top"
          labels="{{ _.startCase(item) }}"
          showActions={true}
          showSelectionIndicator={true}
          value="{{ self.values.slice(0, 1) }}"
          values="{{ item }}"
        >
          <Event
            event="change"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="prepare_rule_preview"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </MultiselectListbox>
        <Container
          id="Results"
          hoistFetching={true}
          showBody={true}
          showHeader={true}
        >
          <Header>
            <Text
              id="pcs_code_results"
              value="#### PCS Code Results"
              verticalAlign="center"
            />
            <TableLegacy
              id="pcs_results"
              _columns={[
                "code",
                "section",
                "body_system",
                "root_operation",
                "body_part",
                "approach",
                "device",
                "qualifier",
                "version_uuid",
                "display",
                "system",
                "version",
              ]}
              _columnVisibility={{
                ordered: [
                  { display: true },
                  { version_uuid: false },
                  { section: true },
                  { approach: true },
                  { qualifier: true },
                  { root_operation: true },
                  { body_system: true },
                  { code: true },
                  { system: false },
                  { body_part: true },
                  { device: true },
                  { version: false },
                ],
              }}
              actionButtons={[
                {
                  ordered: [
                    { actionButtonText: "Map" },
                    { actionButtonType: "runQuery" },
                    { actionButtonQuery: "map" },
                    { actionButtonInternalUrlPath: "" },
                    { actionButtonInternalUrlQuery: "" },
                    { actionButtonUrl: "" },
                    { actionButtonNewWindow: false },
                    { actionButtonDisabled: "" },
                  ],
                },
              ]}
              applyDynamicSettingsToColumnOrder={false}
              columnColors={{
                ordered: [
                  { display: "" },
                  { version_uuid: "" },
                  { section: "" },
                  { approach: "" },
                  { qualifier: "" },
                  { root_operation: "" },
                  { body_system: "" },
                  { code: "" },
                  { system: "" },
                  { body_part: "" },
                  { device: "" },
                  { version: "" },
                ],
              }}
              columns={[
                "code",
                "section",
                "body_system",
                "root_operation",
                "body_part",
                "approach",
                "device",
                "qualifier",
                "version_uuid",
                "display",
                "system",
                "version",
              ]}
              columnVisibility={{
                ordered: [
                  { display: true },
                  { version_uuid: false },
                  { section: true },
                  { approach: true },
                  { qualifier: true },
                  { root_operation: true },
                  { body_system: true },
                  { code: true },
                  { system: false },
                  { body_part: true },
                  { device: true },
                  { version: false },
                ],
              }}
              columnWidths={[
                { object: { id: "code", value: 146.6640625 } },
                { object: { id: "__retool__action_list", value: 123.171875 } },
              ]}
              customButtonName=""
              data="{{populate_rule_preview.data}}"
              events={[
                {
                  ordered: [
                    { event: "rowSelectChange" },
                    { type: "datasource" },
                    { method: "trigger" },
                    { pluginId: "icd_10_pcs_code" },
                    { targetId: null },
                    { params: { ordered: [] } },
                    { waitType: "debounce" },
                    { waitMs: "0" },
                    {
                      eventParams: {
                        ordered: [{ onlyRespondToUserInteraction: true }],
                      },
                    },
                  ],
                },
              ]}
              pageSize={7}
            />
          </Header>
          <View id="94c09" viewKey="View 1" />
        </Container>
      </ContainerWidget>
    </ModuleContainerWidget>
  </Frame>
</App>
