let urls = extension_url.data.source_extension_url;
for (let i = 0; i < urls.length; i++) {
    let url = urls[i];
    let result = url.split('Extension/')[1];
    return result;
}
