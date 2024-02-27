<Modal
  id="modal1"
  buttonText="ℹ️ Counts"
  style={{
    ordered: [
      { "accent-background": "rgba(188, 204, 220, 0.8)" },
      { "primary-surface": "rgba(217, 226, 236, 0.8)" },
      { "border-color": "rgba(98, 125, 152, 0.7)" },
    ],
  }}
>
  <Text
    id="text27"
    _disclosedFields={{ array: [] }}
    style={{ ordered: [{ color: "rgb(51, 78, 104)" }] }}
    value="ℹ️ Explanation of count calculations."
    verticalAlign="center"
  />
  <Text
    id="text22"
    _disclosedFields={{ array: [] }}
    style={{ ordered: [{ color: "rgb(16, 42, 67)" }] }}
    value="**Assignments**"
    verticalAlign="center"
  />
  <Text
    id="text32"
    _disclosedFields={{ array: [] }}
    style={{ ordered: [{ color: "rgb(36, 59, 83)" }] }}
    value="The number of concepts assigned to a user in this project."
    verticalAlign="center"
  />
  <Text
    id="text29"
    _disclosedFields={{ array: [] }}
    style={{ ordered: [{ color: "rgb(36, 59, 83)" }] }}
    value="For mapping, this metric counts concepts where map_status = 'pending'(rejected concepts have their map_status reverted to 'pending' so they are captured here).

 For reviewing, this metric counts concepts where map_status='ready for review'."
    verticalAlign="center"
  />
  <Text
    id="text23"
    _disclosedFields={{ array: [] }}
    style={{ ordered: [{ color: "rgb(16, 42, 67)" }] }}
    value="**Assignments To Do**"
    verticalAlign="center"
  />
  <Text
    id="text24"
    _disclosedFields={{ array: [] }}
    style={{ ordered: [{ color: "rgb(16, 42, 67)" }] }}
    value="**All Accomplished Mappings**"
    verticalAlign="center"
  />
  <Text
    id="text31"
    _disclosedFields={{ array: [] }}
    style={{ ordered: [{ color: "rgb(36, 59, 83)" }] }}
    value={
      'This metric counts concepts the user mapped in the project (map_status ="ready for review" OR "reviewed").'
    }
    verticalAlign="center"
  />
  <Text
    id="text25"
    _disclosedFields={{ array: [] }}
    style={{ ordered: [{ color: "rgb(16, 42, 67)" }] }}
    value="**All Accomplished Reviews**"
    verticalAlign="center"
  />
  <Text
    id="text28"
    _disclosedFields={{ array: [] }}
    style={{ ordered: [{ color: "rgb(36, 59, 83)" }] }}
    value="This metric counts any concepts the user reviewed in the project."
    verticalAlign="center"
  />
</Modal>
