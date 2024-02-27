const currentName = {{processPrimary.data}}[0]; // Access the first element of the array
const allUseCases = {{load_all_use_cases_query.data}};
const matchingItem = allUseCases.find(item => item.name === currentName);

return matchingItem;
