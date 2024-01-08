return {
  -- notify
  {
    "rcarriga/nvim-notify",
    opts = {
      background_colour = "#000000",
    },
  },

  -- which-key
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      defaults = {
        ["<leader>"] = {
          t = { name = "+terminal" },
          T = { name = "+test" },
        },
      },
    },
  },
}
