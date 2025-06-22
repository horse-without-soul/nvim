require "nvchad.autocmds"

local autocmd = vim.api.nvim_create_autocmd

-- Open NvimTree if open path is directory
autocmd("VimEnter", {
  callback = function(data)
    -- Argument is directory?
    if vim.fn.isdirectory(data.file) == 1 then
      vim.cmd.cd(data.file)
      -- Open NvimTree
      require("nvim-tree.api").tree.open()
    elseif data.file then
      vim.cmd.cd(vim.fs.dirname(data.file))
    end
  end
})
