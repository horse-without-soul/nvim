require("nvchad.configs.lspconfig").defaults()

local servers = {}

for _, language in pairs(require "languages") do
    if language.server ~= nil then
        table.insert(servers, language.server)
    end
end

vim.lsp.enable(servers)
