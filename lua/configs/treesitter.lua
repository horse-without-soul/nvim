local ts_languages = {}
for _, language in pairs(require "languages") do
    for _, ts_language in pairs(language[1]) do
        table.insert(ts_languages, ts_language)
    end
end

return ts_languages
