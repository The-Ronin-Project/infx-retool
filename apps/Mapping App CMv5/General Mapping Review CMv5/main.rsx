<App>
  <Include src="./functions.rsx" />
  <Include src="./header.rsx" />
  <Frame id="$main" paddingType="normal" sticky={false} type="main">
    <Include src="./src/tabbedContainer1.rsx" />
    <JSONExplorer
      id="discussion_additional_jsonExplorer"
      hidden="{{discussion_get_additional_data.data.additional_data == null}}  "
      value="{{discussion_get_additional_data.data}}"
    />
    <JSONExplorer
      id="discussion_depends_jsonExplorer"
      hidden="{{  
  discussion_get_depends_on.data.depends_on_property.length === 0 &&  
  discussion_get_depends_on.data.depends_on_system.length === 0 &&  
  discussion_get_depends_on.data.depends_on_display.length === 0 &&  
  discussion_get_depends_on.data.depends_on_value_schema.length === 0 &&  
  discussion_get_depends_on.data.depends_on_value_simple.length === 0 &&  
  discussion_get_depends_on.data.depends_on_value_jsonb.length === 0  
}} "
      value="{{discussion_get_depends_on.data}}"
    />
    <Module
      id="bugReporting1"
      name="Bug Reporting"
      pageUuid="0eaa8960-b6d5-11ed-8108-eff60e0cb731"
    />
  </Frame>
</App>
