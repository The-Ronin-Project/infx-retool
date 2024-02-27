const currentNames = {{processUseCases.data}};
const allUseCases = {{load_all_use_cases_query.data}};
const matchingItems = allUseCases.filter(item => currentNames.includes(item.name));

// Map the matching items to their UUIDs
const secondaryUUIDs = matchingItems.map(item => item.uuid);

return secondaryUUIDs;

