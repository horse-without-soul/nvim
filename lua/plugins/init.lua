return {
  { -- Disable default plugin
    "stevearc/conform.nvim",
    enabled = false,
  },

  -- LSP
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
  	  ensure_installed = require "configs.treesitter"
    },
  },

  -- Documentation generator
  {
    "danymat/neogen",
    dependencies = "nvim-treesitter/nvim-treesitter",
    -- Lazy loading
    cmd = "Neogen",
    keys = { "<leader>nf", },
    opts = {},
  },

  -- Github integration
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
    cmd = "Neogit",
    keys = { "<leader>gg", },
    opts = { kind = "floating", },
  },
}
