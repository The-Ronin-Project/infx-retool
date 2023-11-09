<App>
  <Frame
    id="$main"
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    sticky={false}
    type="main"
  >
    <ModuleContainerWidget
      id="moduleContainer"
      backgroundColor="white"
      isGlobalWidgetContainer={true}
    >
      <Text
        id="text1"
        value="#### Exclude Sarcomas Rule Group"
        verticalAlign="center"
      />
      <NavigationWidget
        id="navigation1"
        menuItems={[
          {
            ordered: [
              { title: "Edit Rules" },
              { hidden: "" },
              {
                clickable: {
                  ordered: [
                    { valueToCopy: "" },
                    { internalUrlHashParams: "" },
                    { exportFileType: "csv" },
                    { buttonType: "action" },
                    { exportTemplate: null },
                    { url: "" },
                    { newWindow: false },
                    { exportQuery: "" },
                    { action: "" },
                    { internalUrlQuery: "" },
                    { internalUrlPath: "" },
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
              { title: "View All Value Sets Using This Rule Group" },
              {
                clickable: {
                  ordered: [
                    { valueToCopy: "" },
                    { internalUrlHashParams: "" },
                    { exportFileType: "csv" },
                    { buttonType: "action" },
                    { exportTemplate: null },
                    { url: "" },
                    { newWindow: false },
                    { exportQuery: "" },
                    { action: "" },
                    { internalUrlQuery: "" },
                    { internalUrlPath: "" },
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
