-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Configure diagnostics display for better handling of long messages
vim.diagnostic.config({
  virtual_text = {
    -- Enable virtual text with better formatting
    prefix = "●",
    spacing = 2,
    -- Format function to handle long messages
    format = function(diagnostic)
      -- Truncate very long messages but keep source info
      local max_width = math.floor(vim.o.columns * 0.4) -- Use 40% of screen width
      local message = diagnostic.message
      if #message > max_width then
        message = string.sub(message, 1, max_width - 3) .. "..."
      end
      -- Include source if available
      if diagnostic.source then
        return string.format("%s (%s)", message, diagnostic.source)
      end
      return message
    end,
  },
  float = {
    -- Configure floating windows for full diagnostic messages
    focusable = true,
    style = "minimal",
    border = "rounded",
    source = "if_many", -- Show source if multiple sources
    header = "",
    prefix = "",
    -- Allow scrolling in floating windows
    max_width = math.floor(vim.o.columns * 0.8),
    max_height = math.floor(vim.o.lines * 0.3),
    wrap = true, -- Enable text wrapping in floating windows
  },
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = "✗",
      [vim.diagnostic.severity.WARN] = "⚠",
      [vim.diagnostic.severity.INFO] = "ℹ",
      [vim.diagnostic.severity.HINT] = "💡",
    },
  },
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})

-- Add keymaps for better diagnostic navigation
vim.keymap.set("n", "<leader>df", vim.diagnostic.open_float, { desc = "Show diagnostic in floating window" })
vim.keymap.set("n", "<leader>dl", vim.diagnostic.setloclist, { desc = "Show diagnostics in location list" })