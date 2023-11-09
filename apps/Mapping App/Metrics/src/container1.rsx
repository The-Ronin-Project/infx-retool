<Container
  id="container1"
  hoistFetching={true}
  showBody={true}
  showHeader={true}
  style={{
    ordered: [
      { headerBackground: "rgba(182, 210, 232, 1)" },
      { background: "rgb(240, 244, 248)" },
    ],
  }}
>
  <Header>
    <Text
      id="text2"
      _disclosedFields={{ array: [] }}
      style={{ ordered: [{ color: "rgb(72, 101, 129)" }] }}
      value="**Total Concepts**"
      verticalAlign="center"
    />
    <Text
      id="text35"
      _disclosedFields={{ array: [] }}
      style={{ ordered: [{ color: "rgb(72, 101, 129)" }] }}
      value="**Total For Discussion**"
      verticalAlign="center"
    />
    <Text
      id="text21"
      _disclosedFields={{ array: [] }}
      style={{ ordered: [{ color: "rgb(72, 101, 129)" }] }}
      value="**Total Unassigned**"
      verticalAlign="center"
    />
    <Text
      id="text4"
      _disclosedFields={{ array: [] }}
      style={{ ordered: [{ color: "rgb(72, 101, 129)" }] }}
      value="**Total No Map**"
      verticalAlign="center"
    />
    <Text
      id="text3"
      _disclosedFields={{ array: [] }}
      style={{ ordered: [{ color: "rgb(72, 101, 129)" }] }}
      value="**Total Assigned**"
      verticalAlign="center"
    />
    <Text
      id="no_map_numeral"
      _disclosedFields={{ array: [] }}
      style={{ ordered: [{ color: "rgb(36, 59, 83)" }] }}
      value="## {{nomap_count.data.count}}"
      verticalAlign="center"
    />
    <Text
      id="discussion_numeral"
      _disclosedFields={{ array: [] }}
      style={{ ordered: [{ color: "rgb(36, 59, 83)" }] }}
      value="## {{discussion_count.data.count}}"
      verticalAlign="center"
    />
    <Text
      id="total_numeral"
      _disclosedFields={{ array: [] }}
      style={{ ordered: [{ color: "rgb(36, 59, 83)" }] }}
      value="## {{total_count.data.count}}"
      verticalAlign="center"
    />
    <Text
      id="assigned_numeral"
      _disclosedFields={{ array: [] }}
      style={{ ordered: [{ color: "rgb(36, 59, 83)" }] }}
      value="## {{assigned_count.data.assigned_count}}"
      verticalAlign="center"
    />
    <Text
      id="unassigned_numeral"
      _disclosedFields={{ array: [] }}
      style={{ ordered: [{ color: "rgb(36, 59, 83)" }] }}
      value="## {{unassigned_count.data.unassigned_count}}"
      verticalAlign="center"
    />
  </Header>
  <View id="22ec8" viewKey="View 1">
    <Text
      id="text36"
      _disclosedFields={{ array: [] }}
      style={{ ordered: [{ color: "rgb(98, 125, 152)" }] }}
      value="**Reviewing**"
      verticalAlign="center"
    />
    <Text
      id="text37"
      _disclosedFields={{ array: [] }}
      style={{ ordered: [{ color: "rgb(98, 125, 152)" }] }}
      value="**Mapping**"
      verticalAlign="center"
    />
    <Include src="./modal1.rsx" />
    <ListView
      id="reviewers_listView"
      instances="{{ reviewer_assignment_counts.data.first_last_name.length }}"
      numColumns="1"
    >
      <Text
        id="text5"
        _disclosedFields={{ array: [] }}
        hidden="{{i!=0}}"
        style={{ ordered: [{ color: "rgb(36, 59, 83)" }] }}
        value="Reviewer"
        verticalAlign="center"
      />
      <Text
        id="text8"
        _disclosedFields={{ array: [] }}
        hidden="{{i!=0}}"
        style={{ ordered: [{ color: "rgb(36, 59, 83)" }] }}
        value="All Accomplished Reviews"
        verticalAlign="center"
      />
      <Text
        id="text6"
        _disclosedFields={{ array: [] }}
        hidden="{{i!=0}}"
        style={{ ordered: [{ color: "rgb(36, 59, 83)" }] }}
        value="Review Assignments"
        verticalAlign="center"
      />
      <Text
        id="text7"
        _disclosedFields={{ array: [] }}
        hidden="{{i!=0}}"
        style={{ ordered: [{ color: "rgb(36, 59, 83)" }] }}
        value="Assignments 
to Do"
        verticalAlign="center"
      />
      <Divider id="divider1" _disclosedFields={{ array: [] }} />
      <Text
        id="text18"
        _disclosedFields={{ array: [] }}
        value="{{reviewer_assignment_counts.data.count[i]}}"
        verticalAlign="center"
      />
      <Text
        id="text19"
        _disclosedFields={{ array: [] }}
        value="{{reviewer_unreviewed_count.data[reviewer_assignment_counts.data.first_last_name[i]] ?? '--'}}"
        verticalAlign="center"
      />
      <Text
        id="text17"
        _disclosedFields={{ array: [] }}
        style={{ ordered: [{ color: "rgb(51, 78, 104)" }] }}
        value="{{reviewer_assignment_counts.data.first_last_name[i]}}"
        verticalAlign="center"
      />
      <Text
        id="text20"
        _disclosedFields={{ array: [] }}
        value="{{reviewed_by_count.data[reviewer_assignment_counts.data.first_last_name[i]] ?? '--'}}"
        verticalAlign="center"
      />
    </ListView>
    <ListView
      id="Mapper_listView2"
      instances="{{ mapper_assignment_counts.data.first_last_name.length }}"
      numColumns="1"
    >
      <Text
        id="text9"
        _disclosedFields={{ array: [] }}
        hidden="{{i!=0}}"
        style={{ ordered: [{ color: "rgb(36, 59, 83)" }] }}
        value="Mapper"
        verticalAlign="center"
      />
      <Text
        id="text10"
        _disclosedFields={{ array: [] }}
        hidden="{{i!=0}}"
        style={{ ordered: [{ color: "rgb(36, 59, 83)" }] }}
        value="Mapping Assignments"
        verticalAlign="center"
      />
      <Text
        id="text12"
        _disclosedFields={{ array: [] }}
        hidden="{{i!=0}}"
        style={{ ordered: [{ color: "rgb(36, 59, 83)" }] }}
        value="All Accomplished Mappings"
        verticalAlign="center"
      />
      <Text
        id="text11"
        _disclosedFields={{ array: [] }}
        hidden="{{i!=0}}"
        style={{ ordered: [{ color: "rgb(36, 59, 83)" }] }}
        value="Assignments 
to Do"
        verticalAlign="center"
      />
      <Divider id="divider2" _disclosedFields={{ array: [] }} />
      <Text
        id="text13"
        _disclosedFields={{ array: [] }}
        style={{ ordered: [{ color: "rgb(51, 78, 104)" }] }}
        value="{{ mapper_assignment_counts.data.first_last_name[i] }}"
        verticalAlign="center"
      />
      <Text
        id="text14"
        _disclosedFields={{ array: [] }}
        value="{{ mapper_assignment_counts.data.count[i] }}"
        verticalAlign="center"
      />
      <Text
        id="text15"
        _disclosedFields={{ array: [] }}
        value="{{mapper_unmapped_count.data[mapper_assignment_counts.data.first_last_name[i]] ?? '--'}}"
        verticalAlign="center"
      />
      <Text
        id="text16"
        _disclosedFields={{ array: [] }}
        value="{{mapper_mapped_count.data[mapper_assignment_counts.data.first_last_name[i]] ?? '--'}}"
        verticalAlign="center"
      />
    </ListView>
  </View>
</Container>
