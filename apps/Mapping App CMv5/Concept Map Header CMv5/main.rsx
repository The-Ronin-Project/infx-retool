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
                    { internalUrlPath: "d857ece0-c655-11ee-b2a8-831adcf813f2" },
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
                    { internalUrlPath: "ca1ee336-c655-11ee-8323-838bb8d91f44" },
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
                    { internalUrlPath: "90fdf39e-c655-11ee-a46f-db0dff2d9890" },
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
                    { internalUrlPath: "34ee233a-c655-11ee-a62d-37d47b9a94b4" },
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
                    { internalUrlPath: "98835834-c655-11ee-883b-03c635188ef3" },
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
                    { internalUrlPath: "757ab336-c656-11ee-a25b-bfcdb01c864b" },
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
                    { internalUrlPath: "58d50c0e-c656-11ee-a386-dbd5263e756e" },
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
                    { internalUrlPath: "ed4ff110-c655-11ee-9bef-93c6737e26b0" },
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
