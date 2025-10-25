return {
  {
    "mrcjkb/rustaceanvim",
    opts = {
      server = {
        default_settings = {
          ["rust-analyzer"] = {
            cargo = {
              allFeatures = false, -- Fix for Anchor macro error
            },
            checkOnSave = {
              allFeatures = false,
            },
          },
        },
      },
    },
  },
}
