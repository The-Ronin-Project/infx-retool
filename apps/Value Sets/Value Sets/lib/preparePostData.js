const allUseCases = {{ load_all_use_cases_query.data }};
let primaryUseCaseUUID = {{ primary_select.value }};
let secondaryUseCaseUUIDs = {{ secondary_multiselect.value }};

let primary_use_case = allUseCases.find(useCase => useCase.uuid === primaryUseCaseUUID);

let secondary_use_case = secondaryUseCaseUUIDs.map(uuid => allUseCases.find(useCase => useCase.uuid === uuid));

let data = {
    "primary_use_case": primary_use_case,
    "secondary_use_case": secondary_use_case
};

// Convert JavaScript object to JSON string if necessary
return data;