-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "onedark"
}

M.ui = {
  tabufline = {
    lazyload = false
  }
}

local servers = {}

for _, language in pairs(require "languages") do
    if language.server ~= nil then
        table.insert(servers, language.server)
    end
end

M.mason = {
  pkgs = servers
}

return M
