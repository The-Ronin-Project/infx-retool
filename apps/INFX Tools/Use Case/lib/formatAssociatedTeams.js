// Access the data from the get_associated_teams query
const teamsData = {{get_associated_teams.data}};

// Check if the teamsData array has elements
if (teamsData && teamsData.length > 0) {
    // Extract all the team names and join them
    return teamsData.map(team => team.name).join(', ');
} else {
    return " ";
}
