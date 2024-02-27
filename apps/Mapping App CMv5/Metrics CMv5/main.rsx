<App>
  <Include src="./functions.rsx" />
  <Include src="./header.rsx" />
  <Frame
    id="$main"
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    sticky={false}
    type="main"
  >
    <Include src="./src/container1.rsx" />
    <Module
      id="bugReporting1"
      name="Bug Reporting"
      pageUuid="0eaa8960-b6d5-11ed-8108-eff60e0cb731"
    />
  </Frame>
</App>
