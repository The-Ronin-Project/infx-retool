<App>
  <Include src="./functions.rsx" />
  <Frame id="$main" sticky={false} type="main">
    <ModuleContainerWidget
      id="moduleContainer"
      backgroundColor="white"
      isGlobalWidgetContainer={true}
    >
      <Link
        id="link1"
        iconBefore="line/interface-arrows-turn-backward"
        showUnderline="never"
        text="Dashboard"
      >
        <Event
          event="click"
          method="openApp"
          params={{
            ordered: [{ uuid: "3b52c88c-6488-11ed-b9e7-8f03ff165179" }],
          }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Link>
      <ProgressBar
        id="progressBar1"
        hideOutput={true}
        label="{{Math.round((parseInt(count_mapped.data.count)) / count_total.data.count * 100)}}% ({{count_mapped.data.count}}) Mapped"
        labelAlign="right"
        labelWidth="50"
        value="{{(parseInt(count_mapped.data.count) / parseInt(count_total.data.count)) * 100}}"
      />
      <Text
        id="text1"
        value="#### {{metadata.data.title}} version {{metadata.data.version}}"
        verticalAlign="center"
      />
      <ProgressBar
        id="progressBar2"
        hideOutput={true}
        label="{{Math.round((parseInt(count_reviewed.data.count)) / count_total.data.count * 100)}}% ({{count_reviewed.data.count}}) Reviewed"
        labelAlign="right"
        labelWidth="50"
        value="{{(parseInt(count_reviewed.data.count)) / parseInt(count_total.data.count) * 100}}"
      />
      <Alert
        id="alert1"
        description="This concept map version can not be edited"
        hidden="{{!(metadata.data.status == 'active' || metadata.data.status == 'retired' )}}"
        title="Status is {{metadata.data.status}}"
      />
      <NavigationWidget
        id="concept_map_navigation"
        menuItems={[
          {
            ordered: [
              { title: "Metrics" },
              {
                clickable: {
                  ordered: [
                    { valueToCopy: "" },
                    { internalUrlHashParams: "" },
                    { exportFileType: "csv" },
                    { buttonType: "internal-url" },
                    { exportTemplate: null },
                    { url: "" },
                    { newWindow: false },
                    { exportQuery: "" },
                    { action: "" },
                    {
                      internalUrlQuery:
                        '"[{\\"key\\":\\"concept_map_version_uuid\\",\\"value\\":\\"{{urlparams.concept_map_version_uuid}}\\"}]"',
                    },
                    { internalUrlPath: "4f40fa80-9908-11ed-b92d-27dfee9843c6" },
                    { exportFileName: "" },
                    { disabled: "" },
                  ],
                },
              },
              { hidden: "" },
              { menuItems: [] },
            ],
          },
          {
            ordered: [
              { title: "Make Assignments" },
              {
                clickable: {
                  ordered: [
                    { valueToCopy: "" },
                    { internalUrlHashParams: "" },
                    { exportFileType: "csv" },
                    { buttonType: "internal-url" },
                    { exportTemplate: null },
                    { url: "" },
                    { newWindow: false },
                    { exportQuery: "" },
                    { action: "" },
                    {
                      internalUrlQuery:
                        '"[{\\"key\\":\\"concept_map_version_uuid\\",\\"value\\":\\"{{urlparams.concept_map_version_uuid}}\\"}]"',
                    },
                    { internalUrlPath: "6634caa0-8161-11ed-a103-6b5287048014" },
                    { exportFileName: "" },
                    { disabled: "" },
                  ],
                },
              },
              { hidden: "" },
              { menuItems: [] },
            ],
          },
          {
            ordered: [
              { title: "Do Mapping" },
              { hidden: "" },
              {
                clickable: {
                  ordered: [
                    { valueToCopy: "" },
                    { internalUrlHashParams: "" },
                    { exportFileType: "csv" },
                    { buttonType: "internal-url" },
                    { exportTemplate: null },
                    { url: "" },
                    { newWindow: false },
                    { exportQuery: "" },
                    { action: "navigate_to_mapper" },
                    {
                      internalUrlQuery:
                        '"[{\\"key\\":\\"concept_map_version_uuid\\",\\"value\\":\\"{{urlparams.concept_map_version_uuid}}\\"}]"',
                    },
                    { internalUrlPath: "184659c0-4e4f-11ed-8a53-4f14117ffdcc" },
                    { exportFileName: "" },
                    { disabled: "" },
                  ],
                },
              },
              { menuItems: [] },
            ],
          },
          {
            ordered: [
              { title: "View Recently Mapped" },
              {
                clickable: {
                  ordered: [
                    { valueToCopy: "" },
                    { internalUrlHashParams: "" },
                    { exportFileType: "csv" },
                    { buttonType: "internal-url" },
                    { exportTemplate: null },
                    { url: "" },
                    { newWindow: false },
                    { exportQuery: "" },
                    { action: "" },
                    {
                      internalUrlQuery:
                        '"[{\\"key\\":\\"concept_map_version_uuid\\",\\"value\\":\\"{{urlparams.concept_map_version_uuid}}\\"}]"',
                    },
                    { internalUrlPath: "f6114ba0-3475-11ed-85a1-178db876f5ba" },
                    { exportFileName: "" },
                    { disabled: "" },
                  ],
                },
              },
              { hidden: "" },
              { menuItems: [] },
            ],
          },
          {
            ordered: [
              { title: "Review Mappings" },
              {
                clickable: {
                  ordered: [
                    { valueToCopy: "" },
                    { internalUrlHashParams: "" },
                    { exportFileType: "csv" },
                    { buttonType: "internal-url" },
                    { exportTemplate: null },
                    { url: "" },
                    { newWindow: false },
                    { exportQuery: "" },
                    { action: "navigate_to_review" },
                    {
                      internalUrlQuery:
                        '"[{\\"key\\":\\"concept_map_version_uuid\\",\\"value\\":\\"{{urlparams.concept_map_version_uuid}}\\"}]"',
                    },
                    { internalUrlPath: "afb4d380-50cb-11ed-b76c-ffbcb400100c" },
                    { exportFileName: "" },
                    { disabled: "" },
                  ],
                },
              },
              { hidden: "" },
              { menuItems: [] },
            ],
          },
          {
            ordered: [
              { title: "View Concept Map" },
              {
                clickable: {
                  ordered: [
                    { valueToCopy: "" },
                    { internalUrlHashParams: "" },
                    { exportFileType: "csv" },
                    { buttonType: "internal-url" },
                    { exportTemplate: null },
                    { url: "" },
                    { newWindow: false },
                    { exportQuery: "" },
                    { action: "" },
                    {
                      internalUrlQuery:
                        '"[{\\"key\\":\\"concept_map_version_uuid\\",\\"value\\":\\"{{urlparams.concept_map_version_uuid}}\\"}]"',
                    },
                    { internalUrlPath: "e2f3f220-3466-11ed-8852-83f9a016043a" },
                    { exportFileName: "" },
                    { disabled: "" },
                  ],
                },
              },
              { hidden: "" },
              { menuItems: [] },
            ],
          },
          {
            ordered: [
              { title: "Settings" },
              {
                clickable: {
                  ordered: [
                    { valueToCopy: "" },
                    { internalUrlHashParams: "" },
                    { exportFileType: "csv" },
                    { buttonType: "internal-url" },
                    { exportTemplate: null },
                    { url: "" },
                    { newWindow: false },
                    { exportQuery: "" },
                    { action: "" },
                    {
                      internalUrlQuery:
                        '"[{\\"key\\":\\"concept_map_version_uuid\\",\\"value\\":\\"{{urlparams.concept_map_version_uuid}}\\"}]"',
                    },
                    { internalUrlPath: "5c3c15e0-5adc-11ed-9b63-03f79b837ac6" },
                    { exportFileName: "" },
                    { disabled: "" },
                  ],
                },
              },
              { hidden: "" },
              { menuItems: [] },
            ],
          },
          {
            ordered: [
              { title: "Publish" },
              {
                clickable: {
                  ordered: [
                    { valueToCopy: "" },
                    { internalUrlHashParams: "" },
                    { exportFileType: "csv" },
                    { buttonType: "internal-url" },
                    { exportTemplate: null },
                    { url: "" },
                    { newWindow: false },
                    { exportQuery: "" },
                    { action: "" },
                    {
                      internalUrlQuery:
                        '"[{\\"key\\":\\"concept_map_version_uuid\\",\\"value\\":\\"{{urlparams.concept_map_version_uuid}}\\"}]"',
                    },
                    { internalUrlPath: "8c727660-4690-11ed-8fd4-0f8700d37ab7" },
                    { exportFileName: "" },
                    { disabled: "" },
                  ],
                },
              },
              { hidden: "" },
              { menuItems: [] },
            ],
          },
        ]}
      />
    </ModuleContainerWidget>
  </Frame>
</App>
