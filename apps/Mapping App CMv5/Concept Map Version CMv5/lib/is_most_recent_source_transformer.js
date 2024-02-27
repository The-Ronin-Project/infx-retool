// Access the 'version' field from both query results
const versionFromSourceInfo = {{source_value_set_info.data.version[0]}};
const versionFromSourceInfo2 = {{source_value_set_info2.data.version[0]}};

// Check if either value is null
if (versionFromSourceInfo == null || versionFromSourceInfo2 == null) {
  return false;
}

// Compare and return the result
return versionFromSourceInfo === versionFromSourceInfo2;
