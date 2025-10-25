return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        rust_analyzer = { enabled = false }, -- Let rustaceanvim handle it, not nvim-lspconfig ( for anchor-idl-build issue )
      },
    },
  },
}
