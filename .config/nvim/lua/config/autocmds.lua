-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

--- Don't hide "" in json files
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "json", "jsonc" },
  callback = function()
    vim.wo.spell = false
    vim.wo.conceallevel = 0
  end,
})

--- Add Rust keymaps
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "rust" },
  callback = function()
    local wk = require("which-key")
    wk.register({
      ["<leader>r"] = { name = "+rust" },
    })

    vim.keymap.set({ "n", "v" }, "<leader>rr", function()
      vim.cmd("RustRun")
    end, { desc = "RustRun" })
  end,
})
