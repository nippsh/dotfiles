-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

--- undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

--- move between lines with left/right
vim.opt.whichwrap:append("<>[]hl")

--- line numbres
vim.opt.number = true
vim.opt.relativenumber = false

--- list & listchars
vim.opt.listchars = {
  tab = "▷▷",
  trail = "·",
  nbsp = "␣",
}
