-- Rust development setup with rustaceanvim
return {
  -- Configure rustaceanvim to work properly with LazyVim
  {
    "mrcjkb/rustaceanvim",
    version = "^5", -- Recommended to pin to a major version
    ft = { "rust" },
    opts = {
      server = {
        on_attach = function(client, bufnr)
          -- Use LazyVim's default LSP keymaps and setup
          require("lazyvim.util").lsp.on_attach(client, bufnr)
        end,
        default_settings = {
          -- rust-analyzer language server configuration
          ["rust-analyzer"] = {
            cargo = {
              allFeatures = true,
              loadOutDirsFromCheck = true,
              buildScripts = {
                enable = true,
              },
            },
            -- Add clippy lints for Rust
            checkOnSave = {
              command = "clippy",
            },
            procMacro = {
              enable = true,
              ignored = {
                ["async-trait"] = { "async_trait" },
                ["napi-derive"] = { "napi" },
                ["async-recursion"] = { "async_recursion" },
              },
            },
            files = {
              excludeDirs = {
                ".direnv",
                ".git",
                ".github",
                ".gitlab",
                "bin",
                "node_modules",
                "target",
                "venv",
                ".venv",
              },
            },
          },
        },
      },
    },
    config = function(_, opts)
      vim.g.rustaceanvim = vim.tbl_deep_extend("keep", vim.g.rustaceanvim or {}, opts or {})
    end,
  },

  -- Disable rust-analyzer in lspconfig to prevent conflicts
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        rust_analyzer = {
          enabled = false, -- Disable rust_analyzer in lspconfig
        },
      },
    },
  },

  -- Configure crates.nvim properly
  {
    "saecki/crates.nvim",
    event = { "BufRead Cargo.toml" },
    opts = {
      completion = {
        crates = {
          enabled = true,
        },
      },
      lsp = {
        enabled = true,
        actions = true,
        completion = true,
        hover = true,
      },
    },
  },
} 