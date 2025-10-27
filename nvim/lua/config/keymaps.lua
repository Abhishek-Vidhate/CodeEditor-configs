-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

-- Map "jk" in insert mode to escape (faster than pressing Esc)
-- vim.keymap.set("i", "jk", "<Esc>", { silent = true })

-- Alternative: Map "jj" if you prefer
vim.keymap.set("i", "jj", "<Esc>", { silent = true })

-- Add any additional keymaps here
