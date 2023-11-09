<App>
  <Include src="./functions.rsx" />
  <Include src="./header.rsx" />
  <Frame id="$main" sticky={false} type="main">
    <Alert
      id="alert1"
      description="Select an item from mapping queue to get started"
      hidden="{{mapping_queue.selectedRow.data != undefined}}"
      title="Info"
    />
    <Text id="text1" value="**Mapping Queue**" verticalAlign="center" />
    <Text id="text8" value="**Currently Mapping**" verticalAlign="center" />
    <Select
      id="user_select"
      captionByIndex=""
      colorByIndex=""
      data="{{ getUsers.data }}"
      disabledByIndex=""
      fallbackTextByIndex=""
      hiddenByIndex=""
      iconByIndex=""
      imageByIndex=""
      label="User"
      labels="{{ item.first_last_name }}"
      overlayMaxHeight={375}
      placeholder="Select User"
      showSelectionIndicator={true}
      tooltipByIndex=""
      value="{{getUserMatch.data.uuid[0]}}"
      values="{{ item.user_uuid }}"
    >
      <Option id="a5928" value="Option 1" />
      <Option id="35045" value="Option 2" />
      <Option id="22c73" value="Option 3" />
    </Select>
    <Select
      id="mapping_group_select"
      data="{{ load_mapping_groups.data }}"
      label="Queue"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showClear={true}
      showSelectionIndicator={true}
      values="{{ item.mapping_group }}"
    />
    <Text
      id="currently_mapping_display"
      value="#### {{mapping_queue.selectedRow.data.display}}"
      verticalAlign="center"
    />
    <TextInput
      id="search_text_input"
      label="Search RxNorm"
      placeholder="Enter value"
    >
      <Event
        enabled="{{select_input.value == 'RxCUI'}}"
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getRxNormNamefromRxCUI"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{select_input.value == 'Drug Name'}}"
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getRxNormInfofromString"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <TableLegacy
      id="mapping_queue"
      _columns={[
        "uuid",
        "code",
        "display",
        "system",
        "comments",
        "additional_context",
        "map_status",
        "concept_map_version_uuid",
        "assigned_mapper",
        "assigned_reviewer",
        "no_map",
        "reason_for_no_map",
        "mapping_group",
      ]}
      _columnVisibility={{
        ordered: [
          { name: false },
          { sales: false },
          { code: false },
          { mapping_group: false },
          { system: false },
          { reason_for_no_map: false },
          { assigned_mapper: false },
          { comments: false },
          { map_status: false },
          { assigned_reviewer: false },
          { additional_context: false },
          { uuid: false },
          { concept_map_version_uuid: false },
          { email: false },
          { no_map: false },
        ],
      }}
      _compatibilityMode={false}
      actionButtonPosition="right"
      actionButtons={[
        {
          ordered: [
            { actionButtonText: "No Map" },
            { actionButtonType: "runQuery" },
            { actionButtonQuery: "no_map_it" },
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
      columnAlignment={{ ordered: [{ "Custom Column 1": "left" }] }}
      columnColors={{
        ordered: [
          { display: "" },
          { name: "" },
          { sales: "" },
          { code: "" },
          { mapping_group: "" },
          { system: "" },
          { reason_for_no_map: "" },
          { assigned_mapper: "" },
          { comments: "" },
          { map_status: "" },
          { assigned_reviewer: "" },
          { additional_context: "" },
          { id: "" },
          { uuid: "" },
          { concept_map_version_uuid: "" },
          { email: "" },
          { no_map: "" },
        ],
      }}
      columnFormats={{ ordered: [{ "Custom Column 1": "button" }] }}
      columnHeaderNames={{ ordered: [{ id: "mda display" }] }}
      columnWidths={[{ object: { id: "display", value: 402.6640625 } }]}
      customButtonName=""
      data="{{load_queue.data}}"
      defaultSelectedRow="none"
      doubleClickToEdit={true}
      events={[
        {
          ordered: [
            { event: "rowSelectChange" },
            { type: "widget" },
            { method: "setValue" },
            { pluginId: "search_text_input" },
            { targetId: null },
            {
              params: {
                ordered: [
                  { value: "{{mapping_queue.selectedRow.data.display}}" },
                ],
              },
            },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      showBoxShadow={false}
    />
    <Include src="./src/rxnorm_search_results_container.rsx" />
    <TextArea
      id="mapping_comments"
      autoResize={true}
      label="Mapping Comments"
      minLines={2}
      placeholder="Enter value"
    />
    <Divider id="divider2" />
    <Text
      id="text5"
      value="##### **Can't find it in our search?** [Check RxNav Manually](https://mor.nlm.nih.gov/RxNav/search)"
      verticalAlign="center"
    />
    <Text
      id="text4"
      maintainSpaceWhenHidden={true}
      value="**Can't Find it in RxNav?**"
      verticalAlign="center"
    />
    <Button
      id="button3"
      disabled="{{load_metadata.data.status == 'active' || load_metadata.data.status == 'retired' }}"
      styleVariant="solid"
      text="Model It"
    >
      <Event
        event="click"
        method="openApp"
        params={{
          ordered: [
            { options: { ordered: [{ newTab: true }] } },
            { uuid: "bd569640-32f8-11ed-ae74-3345d7be0315" },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <SplitButton
      id="no_map"
      disabled="{{load_metadata.data.status == 'active' || load_metadata.data.status == 'retired' }}"
      itemMode="static"
      overlayMaxHeight={375}
      showSelectionIndicator={true}
      styleVariant="solid"
    >
      <Option id="ac651" label="missing dose">
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="no_map_it"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option id="0bd43" label="missing form ">
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="no_map_it"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option id="b7644" label="doesn't exist in RxNorm">
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="no_map_it"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="e85eb"
        disabled={false}
        hidden={false}
        label="not enough information"
      >
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="no_map_it"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="20e16"
        disabled={false}
        hidden={false}
        label="Save for discusion"
      >
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="no_map_it"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
    </SplitButton>
    <Text
      id="textbox"
      horizontalAlign="right"
      value="**No Map Reason**"
      verticalAlign="center"
    />
    <TextInput
      id="rxcui_input"
      disabled="true"
      hidden="true"
      label="RxCUI to Map"
      placeholder="Enter RXCUI"
    />
    <Divider id="divider1" />
    <KeyValueMap
      id="detailView"
      data="{{getInfoBeforeMapping.data}}"
      hidden={'{{rxcui_input.value == ""}}'}
      prevRowFormats={{ ordered: [] }}
      prevRowMappers={{ ordered: [{ rxcui: "<strong>{{self}}</strong>" }] }}
      rowMappers={{ ordered: [{ rxcui: "<strong>{{self}}</strong>" }] }}
      rowMappersRenderAsHTML={{ ordered: [{ rxcui: true }] }}
      rows={[
        "a",
        "b",
        "c",
        "pluginType",
        "namespace",
        "queryRefreshTime",
        "paginationLimit",
        "body",
        "lastReceivedFromResourceAt",
        "queryDisabledMessage",
        "successMessage",
        "queryDisabled",
        "playgroundQuerySaveId",
        "resourceNameOverride",
        "runWhenModelUpdates",
        "paginationPaginationField",
        "headers",
        "showFailureToaster",
        "paginationEnabled",
        "query",
        "playgroundQueryUuid",
        "playgroundQueryId",
        "runWhenPageLoadsDelay",
        "cookies",
        "isImported",
        "showSuccessToaster",
        "cacheKeyTtl",
        "metadata",
        "changesetObject",
        "errorTransformer",
        "confirmationMessage",
        "isFetching",
        "changeset",
        "rawData",
        "queryTriggerDelay",
        "resourceTypeOverride",
        "enableErrorTransformer",
        "showLatestVersionUpdatedWarning",
        "paginationDataField",
        "timestamp",
        "enableTransformer",
        "showUpdateSetValueDynamicallyToggle",
        "runWhenPageLoads",
        "transformer",
        "queryTimeout",
        "requireConfirmation",
        "type",
        "queryFailureConditions",
        "changesetIsObject",
        "enableCaching",
        "bodyType",
        "queryThrottleTime",
        "updateSetValueDynamically",
        "notificationDuration",
        "id",
        "requestSentTimestamp",
        "finished",
        "queryRunTime",
        "error",
        "data",
        "servedFromCache",
        "rxtermsProperties",
        "rxcui",
        "fullName",
        "fullGenericName",
        "brandName",
        "displayName",
        "synonym",
        "strength",
        "rxtermsDoseForm",
        "route",
        "termType",
        "genericRxcui",
        "rxnormDoseForm",
        "suppress",
        "statusCode",
        "message",
      ]}
      rowVisibility={{
        ordered: [
          { queryRefreshTime: true },
          { strength: true },
          { paginationLimit: true },
          { a: true },
          { b: true },
          { rxtermsDoseForm: true },
          { body: true },
          { lastReceivedFromResourceAt: true },
          { queryDisabledMessage: true },
          { c: true },
          { servedFromCache: true },
          { rxnormDoseForm: true },
          { successMessage: true },
          { queryDisabled: true },
          { playgroundQuerySaveId: true },
          { resourceNameOverride: true },
          { termType: true },
          { runWhenModelUpdates: true },
          { paginationPaginationField: true },
          { headers: true },
          { message: true },
          { showFailureToaster: true },
          { paginationEnabled: true },
          { query: true },
          { playgroundQueryUuid: true },
          { playgroundQueryId: true },
          { error: true },
          { route: true },
          { runWhenPageLoadsDelay: true },
          { data: true },
          { pluginType: true },
          { displayName: true },
          { isImported: true },
          { showSuccessToaster: true },
          { cacheKeyTtl: true },
          { requestSentTimestamp: true },
          { cookies: true },
          { metadata: true },
          { queryRunTime: true },
          { changesetObject: true },
          { errorTransformer: true },
          { rxcui: true },
          { finished: true },
          { confirmationMessage: true },
          { isFetching: true },
          { brandName: true },
          { changeset: true },
          { rawData: true },
          { fullGenericName: true },
          { queryTriggerDelay: true },
          { resourceTypeOverride: true },
          { enableErrorTransformer: true },
          { rxtermsProperties: true },
          { suppress: true },
          { showLatestVersionUpdatedWarning: true },
          { paginationDataField: true },
          { timestamp: true },
          { enableTransformer: true },
          { showUpdateSetValueDynamicallyToggle: true },
          { runWhenPageLoads: true },
          { transformer: true },
          { queryTimeout: true },
          { fullName: true },
          { requireConfirmation: true },
          { genericRxcui: true },
          { type: true },
          { queryFailureConditions: true },
          { id: true },
          { namespace: true },
          { changesetIsObject: true },
          { synonym: true },
          { enableCaching: true },
          { bodyType: true },
          { statusCode: true },
          { queryThrottleTime: true },
          { updateSetValueDynamically: true },
          { notificationDuration: true },
        ],
      }}
    />
    <TableLegacy
      id="table1"
      _columnVisibility={{
        ordered: [{ propCategory: false }, { propName: false }],
      }}
      _compatibilityMode={false}
      columnColors={{
        ordered: [
          { propCategory: "" },
          { propName: "" },
          { propValue: "" },
          { propConcept: "" },
        ],
      }}
      columnHeaderNames={{ ordered: [{ propValue: "Ingredients" }] }}
      customButtonName=""
      data="{{getIngredients.data.propConceptGroup.propConcept}}"
      doubleClickToEdit={true}
      hidden={'{{rxcui_input.value == ""}}'}
      rowHeight="compact"
      showBoxShadow={false}
      style={{ ordered: [{ headerText: "rgba(3, 3, 3, 1)" }] }}
      useCompactMode={true}
    />
    <SplitButton
      id="map_button"
      disabled="{{load_metadata.data.status == 'active' || load_metadata.data.status == 'retired' }}"
      hidden={'{{rxcui_input.value == ""}}'}
      itemMode="static"
      overlayMaxHeight={375}
      showSelectionIndicator={true}
      styleVariant="solid"
    >
      <Option id="b9414" label="Map as Equivalent">
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="map_equivalent_from_detail_view"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option id="f1b16" label="Map Source is Narrower than Target">
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="map_narrower_from_detail_view"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
    </SplitButton>
  </Frame>
</App>
