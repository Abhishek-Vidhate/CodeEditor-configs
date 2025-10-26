return {
  {
    "folke/snacks.nvim",
    opts = {
      explorer = {
        -- Show hidden files and directories
        hidden = true,
      },
      picker = {
        sources = {
          files = {
            -- Show hidden files in file picker
            hidden = true,
            -- Show files ignored by .gitignore
            ignored = true,
          },
        },
      },
    },
  },
}
