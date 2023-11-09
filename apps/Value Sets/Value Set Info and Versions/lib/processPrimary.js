const data = get_associated_use_cases.data;

let primary_use_case = data.primary_use_case
    ? [data.primary_use_case.name]
    : ["No primary use case at this time."];

return primary_use_case;
