const data = get_associated_use_cases.data;

let secondary_use_cases = data.secondary_use_cases 
    ? data.secondary_use_cases.map(use_case => use_case.name) 
    : [];

if(secondary_use_cases.length === 0) {
    secondary_use_cases = [" "];
}

return secondary_use_cases;