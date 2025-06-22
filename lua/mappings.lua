require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<leader>nf", function()
  require("neogen").generate({})
end, { desc = "neogen generate docs" })

map("n", "<leader>gg", function()
  require("neogit").open()
end, { desc = "neogit open"})

local nomap = vim.keymap.del

-- Delete number and relativenumber toggle
nomap("n", "<leader>n")
nomap("n", "<leader>rn")
-- Delete telescope view of git log and commit
nomap("n", "<leader>gt")
nomap("n", "<leader>cm")
