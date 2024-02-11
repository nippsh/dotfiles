-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true }

--- indenting with tab
keymap.set("v", "<TAB>", ">gv", opts)
keymap.set("v", "<S-TAB>", "<gv", opts)

--- Easy insertion of a trailing ; or , from insert mode
keymap.set("i", ";;", "<Esc>A;<Esc>", opts)
keymap.set("i", ",,", "<Esc>A,<Esc>", opts)

--- terminal
local Util = require("lazyvim.util")
local lazyterm = function()
  Util.terminal(nil, { cwd = Util.root() })
end

keymap.set("n", "<leader>tt", lazyterm, { desc = "Terminal (root dir)" })
keymap.set("n", "<leader>tT", function()
  Util.terminal()
end, { desc = "Terminal (cwd)" })

--- trigger code actions like in rider
keymap.set({ "n", "v" }, "<C-Enter>", vim.lsp.buf.code_action, { desc = "Code Action" })

--- remap d, c, x to black hole register
keymap.set({ "n", "v" }, "d", '"_d', opts)
keymap.set({ "n", "v" }, "c", '"_c', opts)
keymap.set({ "n", "v" }, "x", '"_x', opts)
