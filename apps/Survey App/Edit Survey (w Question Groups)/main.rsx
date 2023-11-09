<App>
  <Include src="./functions.rsx" />
  <Frame id="$main" sticky={false} type="main">
    <Text
      id="text5"
      style={{ ordered: [] }}
      value="**{{ load_survey_metadata.data.title }}**"
      verticalAlign="center"
    />
    <Text
      id="text6"
      value="Survey UUID: {{load_survey_metadata.data.uuid}}"
      verticalAlign="center"
    />
    <TabbedContainerWidget
      id="tabbedcontainer1"
      overflowType="scroll"
      tabNames={
        '["Edit Survey","Search Question Groups","Pick Question Group from List","View Survey"]'
      }
    >
      <ButtonWidget
        id="button3"
        events={[
          {
            ordered: [
              { event: "click" },
              { type: "datasource" },
              { method: "trigger" },
              { pluginId: "load_entire_survey_with_questions" },
              { params: { ordered: [] } },
              { waitType: "debounce" },
              { waitMs: "0" },
            ],
          },
        ]}
        loading="{{load_entire_survey_with_questions.isFetching}}"
        value="Build Survey"
      />
      <TableLegacy
        id="qg_list"
        _columns={[
          "id",
          "name",
          "email",
          "sales",
          "uuid",
          "symptom_uuid",
          "title",
          "description",
          "symptom_id",
          "provider_label",
          "patient_label",
          "last_modified_date",
          "last_modified_user",
          "qol_symptom",
          "Custom Column 1",
        ]}
        _columnVisibility={{
          ordered: [
            { provider_label: true },
            { name: true },
            { sales: true },
            { symptom_uuid: false },
            { symptom_id: false },
            { "Custom Column 1": true },
            { qol_symptom: true },
            { last_modified_user: false },
            { title: true },
            { patient_label: false },
            { id: true },
            { last_modified_date: false },
            { uuid: false },
            { email: true },
            { description: true },
          ],
        }}
        _unfilteredSelectedIndex=""
        actionButtonColumnName="Add to Survey"
        actionButtonPosition="right"
        actionButtons={[
          {
            ordered: [
              { actionButtonText: "Add to Survey" },
              { actionButtonType: "runQuery" },
              { actionButtonQuery: "add_to_survey_from_list" },
              { actionButtonInternalUrlPath: "" },
              { actionButtonInternalUrlQuery: "" },
              { actionButtonUrl: "" },
              { actionButtonNewWindow: false },
              {
                actionButtonDisabled:
                  "{{load_survey.data.qg_uuid.includes(currentRow.uuid)}}",
              },
            ],
          },
        ]}
        applyDynamicSettingsToColumnOrder={false}
        calculatedColumns={["Custom Column 1"]}
        columnColors={{
          ordered: [
            { provider_label: "" },
            { symptom_uuid: "" },
            { symptom_id: "" },
            {
              "Custom Column 1":
                "{{load_survey.data.qg_uuid.includes(currentRow.uuid) ? 'green' : 'white'}}",
            },
            { qol_symptom: "" },
            { last_modified_user: "" },
            { title: "" },
            { patient_label: "" },
            { last_modified_date: "" },
            { uuid: "" },
            { description: "" },
          ],
        }}
        columnHeaderNames={{
          ordered: [
            { qol_symptom: "Quality of Life Symptom" },
            { provider_label: "Symptom" },
            { description: "Description" },
            { title: "Title" },
            { "Custom Column 1": "In Survey" },
          ],
        }}
        columnMappers={{
          ordered: [
            {
              "Custom Column 1":
                "{{load_survey.data.qg_uuid.includes(currentRow.uuid)}}",
            },
          ],
        }}
        columns={[
          "id",
          "name",
          "email",
          "sales",
          "uuid",
          "symptom_uuid",
          "title",
          "description",
          "symptom_id",
          "provider_label",
          "patient_label",
          "last_modified_date",
          "last_modified_user",
          "qol_symptom",
          "Custom Column 1",
        ]}
        columnVisibility={{
          ordered: [
            { provider_label: true },
            { name: true },
            { sales: true },
            { symptom_uuid: false },
            { symptom_id: false },
            { "Custom Column 1": true },
            { qol_symptom: true },
            { last_modified_user: false },
            { title: true },
            { patient_label: false },
            { id: true },
            { last_modified_date: false },
            { uuid: false },
            { email: true },
            { description: true },
          ],
        }}
        customButtonName=""
        data="{{load_all_question_groups.data}}"
        pageSize={39}
        showColumnBorders={true}
      />
      <TextInputWidget
        id="qg_search"
        label="Search for Question Group"
        type="text"
      />
      <TableLegacy
        id="question_groups"
        _columns={[
          "id",
          "name",
          "email",
          "sales",
          "title",
          "description",
          "uuid",
          "survey_uuid",
          "question_group_uuid",
          "position",
          "symptom_uuid",
          "link_uuid",
          "qg_uuid",
        ]}
        _columnVisibility={{
          ordered: [
            { link_uuid: false },
            { survey_uuid: false },
            { qg_uuid: false },
            { position: true },
            { name: true },
            { sales: true },
            { symptom_uuid: false },
            { question_group_uuid: false },
            { title: true },
            { id: true },
            { uuid: false },
            { email: true },
            { description: true },
          ],
        }}
        _unfilteredSelectedIndex=""
        actionButtonPosition="right"
        actionButtons={[
          {
            ordered: [
              { actionButtonText: "Remove" },
              { actionButtonType: "runQuery" },
              { actionButtonQuery: "remove_question_group" },
              { actionButtonInternalUrlPath: "" },
              { actionButtonInternalUrlQuery: "" },
              { actionButtonUrl: "" },
              { actionButtonNewWindow: false },
              { actionButtonDisabled: "" },
            ],
          },
          {
            ordered: [
              { actionButtonText: "View/Edit Question Group" },
              { actionButtonType: "openInternalUrl" },
              { actionButtonQuery: "" },
              {
                actionButtonInternalUrlPath:
                  "c20b1d76-0a9c-11ec-81b0-d370c741a3b7",
              },
              {
                actionButtonInternalUrlQuery:
                  '"[{\\"key\\":\\"uuid\\",\\"value\\":\\"{{question_groups.selectedRow.data.qg_uuid}}\\"}]"',
              },
              { actionButtonUrl: "" },
              { actionButtonNewWindow: true },
              { actionButtonDisabled: "" },
            ],
          },
        ]}
        applyDynamicSettingsToColumnOrder={false}
        columnColors={{
          ordered: [
            { link_uuid: "" },
            { survey_uuid: "" },
            { qg_uuid: "" },
            { position: "" },
            { symptom_uuid: "" },
            { question_group_uuid: "" },
            { title: "" },
            { uuid: "" },
            { description: "" },
          ],
        }}
        columnEditable={{ ordered: [{ position: true }] }}
        columnHeaderNames={{
          ordered: [
            { title: "Question Group" },
            { description: "Question Group Description" },
            { position: "Position" },
          ],
        }}
        columns={[
          "id",
          "name",
          "email",
          "sales",
          "title",
          "description",
          "uuid",
          "survey_uuid",
          "question_group_uuid",
          "position",
          "symptom_uuid",
          "link_uuid",
          "qg_uuid",
        ]}
        columnVisibility={{
          ordered: [
            { link_uuid: false },
            { survey_uuid: false },
            { qg_uuid: false },
            { position: true },
            { name: true },
            { sales: true },
            { symptom_uuid: false },
            { question_group_uuid: false },
            { title: true },
            { id: true },
            { uuid: false },
            { email: true },
            { description: true },
          ],
        }}
        columnWidths={[{ object: { id: "position", value: 68.5 } }]}
        customButtonName=""
        data="{{load_survey.data}}"
        events={[
          {
            ordered: [
              { event: "saveChanges" },
              { type: "datasource" },
              { method: "trigger" },
              { pluginId: "bulk_update_positions" },
              { params: { ordered: [] } },
              { waitType: "debounce" },
              { waitMs: "0" },
            ],
          },
        ]}
        pageSize={28}
        showColumnBorders={true}
      />
      <SelectWidget
        id="org_select"
        label="Organization"
        labels="{{load_organizations.data.org_name}}"
        placeholder="Select a value"
        values="{{load_organizations.data.uuid}}"
      />
      <ButtonWidget
        id="button4"
        disabled="{{org_select.value == null}}"
        events={[
          {
            ordered: [
              { event: "click" },
              { type: "util" },
              { method: "openUrl" },
              { pluginId: "" },
              {
                params: {
                  ordered: [
                    { options: { ordered: [{ newTab: true }] } },
                    {
                      url: "https://hashi.prod.projectronin.io/surveys/{{urlparams.uuid}}?organization_uuid={{org_select.value}}",
                    },
                  ],
                },
              },
              { waitType: "debounce" },
              { waitMs: "0" },
              { enabled: "" },
            ],
          },
        ]}
        value="Download Survey"
      />
      <ButtonWidget
        id="button1"
        events={[
          {
            ordered: [
              { event: "click" },
              { type: "util" },
              { method: "openApp" },
              { pluginId: "" },
              {
                params: {
                  ordered: [
                    { uuid: "3890c4c0-0a9b-11ec-902a-57202d4ce0d0" },
                    { options: { ordered: [{ newTab: true }] } },
                  ],
                },
              },
              { waitType: "debounce" },
              { waitMs: "0" },
            ],
          },
        ]}
        value="Create New Question Group"
      />
      <Button
        id="button5"
        disabled="{{org_select.value == null}}"
        styleVariant="solid"
        text="Download Review View"
      >
        <Event
          event="click"
          method="openUrl"
          params={{
            ordered: [
              { options: { ordered: [{ newTab: true }] } },
              {
                url: "https://infx-internal.prod.projectronin.io/surveys/{{urlparams.uuid}}?organization_uuid={{org_select.value}}",
              },
            ],
          }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Button>
      <ListView
        id="listview1"
        dynamicHeightsEnabled={false}
        formDataKey=""
        heightType="fixed"
        instances="{{load_entire_survey_with_questions.data.question_uuid.length
}}"
        itemHeight="1"
        overflowType="visible"
        rowKeys="{{load_entire_survey_with_questions.data.question_uuid[i]}}"
        scroll={false}
        showBorder={false}
        showDropShadow={false}
      >
        <Text
          id="text4"
          style={{ ordered: [] }}
          value="{{load_entire_survey_with_questions.data.title[i]}}"
          verticalAlign="center"
        />
        <Text
          id="text2"
          style={{ ordered: [] }}
          value="({{i + 1}}) <strong>{{load_entire_survey_with_questions.data.question_text[i]}}</strong>"
          verticalAlign="center"
        />
        <ButtonWidget
          id="button2"
          events={[
            {
              ordered: [
                { event: "click" },
                { type: "util" },
                { method: "openApp" },
                { pluginId: "" },
                {
                  params: {
                    ordered: [
                      { uuid: "cb6b541c-0c13-11ec-9a40-fb28775ac10c" },
                      {
                        options: {
                          ordered: [
                            { newTab: true },
                            {
                              queryParams: [
                                {
                                  ordered: [
                                    { key: "survey_uuid" },
                                    { value: "{{urlparams.uuid}}" },
                                  ],
                                },
                                {
                                  ordered: [
                                    { key: "question_uuid" },
                                    {
                                      value:
                                        "{{load_entire_survey_with_questions.data.question_uuid[i]}}",
                                    },
                                  ],
                                },
                              ],
                            },
                          ],
                        },
                      },
                    ],
                  },
                },
                { waitType: "debounce" },
                { waitMs: "0" },
              ],
            },
          ]}
          style={{ ordered: [{ "accent-background": "#979797" }] }}
          value="Manage Alert Tiers"
        />
        <Text
          id="text3"
          style={{ ordered: [] }}
          value="{{load_entire_survey_with_questions.data.}}"
          verticalAlign="center"
        />
      </ListView>
      <TableLegacy
        id="qg_search_results"
        _columns={[
          "id",
          "name",
          "email",
          "sales",
          "uuid",
          "title",
          "description",
          "symptom",
          "Custom Column 1",
        ]}
        _columnVisibility={{
          ordered: [
            { uuid: false },
            { title: true },
            { description: true },
            { symptom: true },
            { id: true },
            { name: true },
            { email: true },
            { sales: true },
            { "Custom Column 1": true },
          ],
        }}
        _unfilteredSelectedIndex=""
        actionButtonPosition="right"
        actionButtons={[
          {
            ordered: [
              { actionButtonText: "Add to Survey" },
              { actionButtonType: "runQuery" },
              { actionButtonQuery: "add_to_survey_from_search" },
              { actionButtonInternalUrlPath: "" },
              { actionButtonInternalUrlQuery: "" },
              { actionButtonUrl: "" },
              { actionButtonNewWindow: false },
              {
                actionButtonDisabled:
                  "{{load_survey.data.qg_uuid.includes(currentRow.uuid)}}",
              },
            ],
          },
        ]}
        applyDynamicSettingsToColumnOrder={false}
        calculatedColumns={["Custom Column 1"]}
        columnColors={{
          ordered: [
            { uuid: "" },
            { title: "" },
            { description: "" },
            { symptom: "" },
            {
              "Custom Column 1":
                "{{load_survey.data.qg_uuid.includes(currentRow.uuid) ? 'green' : 'white'}}",
            },
          ],
        }}
        columnHeaderNames={{ ordered: [{ "Custom Column 1": "In Survey" }] }}
        columnMappers={{
          ordered: [
            {
              "Custom Column 1":
                "{{load_survey.data.qg_uuid.includes(currentRow.uuid)}}",
            },
          ],
        }}
        columns={[
          "id",
          "name",
          "email",
          "sales",
          "uuid",
          "title",
          "description",
          "symptom",
          "Custom Column 1",
        ]}
        columnVisibility={{
          ordered: [
            { uuid: false },
            { title: true },
            { description: true },
            { symptom: true },
            { id: true },
            { name: true },
            { email: true },
            { sales: true },
            { "Custom Column 1": true },
          ],
        }}
        customButtonName=""
        data="{{question_group_search.data.hits.hits.map(hit => hit['_source'])}}"
        pageSize={15}
        serverPaginated={true}
        showColumnBorders={true}
        totalRowCount="{{ question_group_search.data.hits.total.value }}"
      />
      <Text
        id="text1"
        style={{ ordered: [] }}
        value="Editing survey: <strong>{{load_survey_metadata.data.title}} </strong>"
        verticalAlign="center"
      />
    </TabbedContainerWidget>
  </Frame>
</App>
