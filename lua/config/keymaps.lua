-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local map = vim.keymap.set

-- 1. Save (Space + w)
map("n", "<leader>w", "<cmd>w<cr>", { desc = "Save File" })

-- 2. Terminal (Space + t)
-- This opens the LazyVim floating terminal
map("n", "<leader>t", function()
  Snacks.terminal()
end, { desc = "Terminal" })

-- 3. Go Run (Space + gr)
-- This runs the current file using the built-in terminal
map("n", "<leader>gr", function()
  Snacks.terminal("go run " .. vim.fn.expand("%"))
end, { desc = "Go Run" })

-- 4. Quick Fix Imports (Bonus for Go)
map(
  "n",
  "<leader>gi",
  "<cmd>lua vim.lsp.buf.code_action({ context = { only = { 'source.organizeImports' } }, apply = true })<cr>",
  { desc = "Go Organize Imports" }
)
