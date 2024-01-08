return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    lazy = false,
    opts = {
      transparent_background = true,
      flavour = "macchiato",
    },
  },

  {
    "navarasu/onedark.nvim",
    name = "onedark",
    lazy = false,
    opts = {
      style = "dark",
      transparent = "true",
      lualine = {
        transparent = true,
      },
    },
  },

  --- set default colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
