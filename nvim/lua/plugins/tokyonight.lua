return {
  {
    "folke/tokyonight.nvim",
    opts = {
      style = "night",     -- Use the Night variant
      transparent = true,  -- Enable transparency
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
