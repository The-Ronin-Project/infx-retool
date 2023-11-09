<App>
  <Include src="./functions.rsx" />
  <Frame id="$main" type="main">
    <Select
      id="Assignment"
      allowDeselect={true}
      data="{{ Select_team_mate.data }}"
      label="Assignment"
      labels="{{item.first_last_name}}"
      placeholder="Select an option"
      showSelectionIndicator={true}
      values="{{item.uuid}}"
    />
    <TabbedContainerWidget
      id="tabbedContainer1"
      tabNames={
        '["Concept Map Assingments", "Value Set Assignments", "Concept Map Review Page","Value Set Review Page","Backup Assignment Page"]'
      }
    >
      <TableLegacy
        id="table5"
        _columns={["content-type", "date", "content-length"]}
        _columnVisibility={{
          ordered: [
            { "content-type": true },
            { date: true },
            { "content-length": true },
          ],
        }}
        applyDynamicSettingsToColumnOrder={false}
        columnColors={{
          ordered: [
            { "content-type": "" },
            { date: "" },
            { "content-length": "" },
          ],
        }}
        columns={["content-type", "date", "content-length"]}
        columnVisibility={{
          ordered: [
            { "content-type": true },
            { date: true },
            { "content-length": true },
          ],
        }}
        customButtonName=""
        data="{{ Mapper_count.data.metadata.headers }}"
        pageSize={16}
      />
      <TableLegacy
        id="table1"
        _columns={[
          "id",
          "name",
          "Custom Column 1",
          "email",
          "sales",
          "assigned_to",
          "row",
          "value_set_version_uuid",
          "assignment_back_up",
          "status",
          "due_date",
        ]}
        _columnVisibility={{
          ordered: [
            { assignment_back_up: true },
            { name: true },
            { sales: false },
            { assigned_to: true },
            { value_set_version_uuid: true },
            { status: true },
            { "Custom Column 1": false },
            { due_date: true },
            { row: true },
            { id: false },
            { email: true },
          ],
        }}
        actionButtonColumnName="Value Set Page"
        actionButtons={[
          {
            ordered: [
              { actionButtonText: "Value Set Page" },
              { actionButtonType: "runQuery" },
              { actionButtonQuery: "" },
              { actionButtonInternalUrlPath: "" },
              { actionButtonInternalUrlQuery: "" },
              { actionButtonUrl: "" },
              { actionButtonNewWindow: false },
              { actionButtonDisabled: "" },
            ],
          },
        ]}
        applyDynamicSettingsToColumnOrder={false}
        calculatedColumns={["Custom Column 1"]}
        columnColors={{
          ordered: [
            { assignment_back_up: "" },
            { name: "" },
            { sales: "" },
            { assigned_to: "" },
            { value_set_version_uuid: "" },
            { status: "" },
            { "Custom Column 1": "" },
            { due_date: "" },
            { row: "" },
            { id: "" },
            { email: "" },
          ],
        }}
        columnEditable={{ ordered: [{ "Custom Column 1": false }] }}
        columnHeaderNames={{
          ordered: [
            { email: "Value Set Name" },
            { "Custom Column 1": "Due Date" },
          ],
        }}
        columns={[
          "id",
          "name",
          "Custom Column 1",
          "email",
          "sales",
          "assigned_to",
          "row",
          "value_set_version_uuid",
          "assignment_back_up",
          "status",
          "due_date",
        ]}
        columnVisibility={{
          ordered: [
            { assignment_back_up: true },
            { name: true },
            { sales: false },
            { assigned_to: true },
            { value_set_version_uuid: true },
            { status: true },
            { "Custom Column 1": false },
            { due_date: true },
            { row: true },
            { id: false },
            { email: true },
          ],
        }}
        customButtonName=""
        data="{{value_set_assignment.data}}"
        pageSize={16}
      />
      <TableLegacy
        id="table4"
        _columns={["content-type", "date", "content-length"]}
        _columnVisibility={{
          ordered: [
            { "content-type": true },
            { date: true },
            { "content-length": true },
          ],
        }}
        applyDynamicSettingsToColumnOrder={false}
        columnColors={{
          ordered: [
            { "content-type": "" },
            { date: "" },
            { "content-length": "" },
          ],
        }}
        columns={["content-type", "date", "content-length"]}
        columnVisibility={{
          ordered: [
            { "content-type": true },
            { date: true },
            { "content-length": true },
          ],
        }}
        customButtonName=""
        data="{{ Mapper_count.data.metadata.headers }}"
        pageSize={16}
      />
      <TableLegacy
        id="table6"
        _columns={["content-type", "date", "content-length"]}
        _columnVisibility={{
          ordered: [
            { "content-type": true },
            { date: true },
            { "content-length": true },
          ],
        }}
        applyDynamicSettingsToColumnOrder={false}
        columnColors={{
          ordered: [
            { "content-type": "" },
            { date: "" },
            { "content-length": "" },
          ],
        }}
        columns={["content-type", "date", "content-length"]}
        columnVisibility={{
          ordered: [
            { "content-type": true },
            { date: true },
            { "content-length": true },
          ],
        }}
        customButtonName=""
        data="{{ Mapper_count.data.metadata.headers }}"
        pageSize={16}
      />
      <TableLegacy
        id="table3"
        _columns={["content-type", "date", "content-length", "Custom Column 1"]}
        _columnVisibility={{
          ordered: [
            { "content-type": false },
            { date: true },
            { "content-length": true },
            { "Custom Column 1": true },
          ],
        }}
        actionButtons={[
          {
            ordered: [
              { actionButtonText: "Review Value Set" },
              { actionButtonType: "runQuery" },
              { actionButtonQuery: "" },
              { actionButtonInternalUrlPath: "" },
              { actionButtonInternalUrlQuery: "" },
              { actionButtonUrl: "" },
              { actionButtonNewWindow: false },
              { actionButtonDisabled: "" },
            ],
          },
        ]}
        applyDynamicSettingsToColumnOrder={false}
        calculatedColumns={["Custom Column 1"]}
        columnColors={{
          ordered: [
            { "content-type": "" },
            { date: "" },
            { "content-length": "" },
          ],
        }}
        columnEditable={{ ordered: [{ "Custom Column 1": false }] }}
        columnHeaderNames={{
          ordered: [
            { "content-length": "Value Set Name" },
            { date: "Due Date" },
          ],
        }}
        columns={["content-type", "date", "content-length", "Custom Column 1"]}
        columnVisibility={{
          ordered: [
            { "content-type": false },
            { date: true },
            { "content-length": true },
            { "Custom Column 1": true },
          ],
        }}
        columnWidths={[
          { object: { id: "__retool__action_list", value: 268.0859375 } },
          { object: { id: "content-length", value: 656.078125 } },
          { object: { id: "date", value: 386 } },
        ]}
        customButtonName=""
        data="{{ Mapper_count.data.metadata.headers }}"
        pageSize={16}
      />
      <TableLegacy
        id="mapping"
        _columns={[
          "id",
          "name",
          "email",
          "sales",
          "Custom Column 1",
          "Custom Column 2",
          "uuid",
          "title",
          "publisher",
          "author",
          "purpose",
          "description",
          "created_date",
          "experimental",
          "cm_description",
          "cmv_description",
          "concept_map_uuid",
          "comments",
          "status",
          "effective_start",
          "effective_end",
          "version",
        ]}
        _columnVisibility={{
          ordered: [
            { effective_end: true },
            { created_date: true },
            { cm_description: true },
            { experimental: true },
            { cmv_description: true },
            { effective_start: true },
            { author: true },
            { name: true },
            { sales: true },
            { status: true },
            { comments: true },
            { concept_map_uuid: true },
            { "Custom Column 1": true },
            { "Custom Column 2": true },
            { version: true },
            { title: true },
            { id: false },
            { uuid: true },
            { publisher: true },
            { email: true },
            { description: true },
            { purpose: true },
          ],
        }}
        actionButtonColumnName="Mapping Project Page"
        actionButtons={[
          {
            ordered: [
              { actionButtonText: "Mapping Link" },
              { actionButtonType: "runQuery" },
              { actionButtonQuery: "" },
              { actionButtonInternalUrlPath: "" },
              { actionButtonInternalUrlQuery: "" },
              { actionButtonUrl: "" },
              { actionButtonNewWindow: false },
              { actionButtonDisabled: "" },
            ],
          },
        ]}
        applyDynamicSettingsToColumnOrder={false}
        calculatedColumns={["Custom Column 1", "Custom Column 2"]}
        columnColors={{
          ordered: [
            { effective_end: "" },
            { created_date: "" },
            { cm_description: "" },
            { experimental: "" },
            { cmv_description: "" },
            { effective_start: "" },
            { author: "" },
            { name: "" },
            { sales: "" },
            { status: "" },
            { comments: "" },
            { concept_map_uuid: "" },
            { "Custom Column 1": "" },
            { "Custom Column 2": "" },
            { version: "" },
            { title: "" },
            { id: "" },
            { uuid: "" },
            { publisher: "" },
            { email: "" },
            { description: "" },
            { purpose: "" },
          ],
        }}
        columnEditable={{
          ordered: [
            { id: true },
            { name: true },
            { email: true },
            { sales: true },
            { "Custom Column 1": true },
            { "Custom Column 2": true },
          ],
        }}
        columnHeaderNames={{
          ordered: [
            { email: "Mapping Assignment" },
            { sales: "Due Date" },
            { name: "Mapping Project" },
            { "Custom Column 1": "Count" },
            { "Custom Column 2": "Due Date" },
          ],
        }}
        columns={[
          "id",
          "name",
          "email",
          "sales",
          "Custom Column 1",
          "Custom Column 2",
          "uuid",
          "title",
          "publisher",
          "author",
          "purpose",
          "description",
          "created_date",
          "experimental",
          "cm_description",
          "cmv_description",
          "concept_map_uuid",
          "comments",
          "status",
          "effective_start",
          "effective_end",
          "version",
        ]}
        columnVisibility={{
          ordered: [
            { effective_end: true },
            { created_date: true },
            { cm_description: true },
            { experimental: true },
            { cmv_description: true },
            { effective_start: true },
            { author: true },
            { name: true },
            { sales: true },
            { status: true },
            { comments: true },
            { concept_map_uuid: true },
            { "Custom Column 1": true },
            { "Custom Column 2": true },
            { version: true },
            { title: true },
            { id: false },
            { uuid: true },
            { publisher: true },
            { email: true },
            { description: true },
            { purpose: true },
          ],
        }}
        customButtonName=""
        data="{{Mapper_count.data}}"
        pageSize={16}
      />
      <TableLegacy
        id="table2"
        _columns={["content-type", "date", "content-length"]}
        _columnVisibility={{
          ordered: [
            { "content-type": false },
            { date: true },
            { "content-length": true },
          ],
        }}
        actionButtons={[
          {
            ordered: [
              { actionButtonText: "Review Concept Map" },
              { actionButtonType: "runQuery" },
              { actionButtonQuery: "" },
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
            { "content-type": "" },
            { date: "" },
            { "content-length": "" },
          ],
        }}
        columnHeaderNames={{
          ordered: [
            { "content-type": "Quanitity" },
            { date: "Due date" },
            { "content-length": "Quantity" },
          ],
        }}
        columns={["content-type", "date", "content-length"]}
        columnVisibility={{
          ordered: [
            { "content-type": false },
            { date: true },
            { "content-length": true },
          ],
        }}
        customButtonName=""
        data="{{ Mapper_count.data.metadata.headers }}"
        pageSize={15}
      />
    </TabbedContainerWidget>
  </Frame>
</App>
