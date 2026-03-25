-- 1. GLOBAL UI & PERFORMANCE
vim.opt.termguicolors = true
vim.opt.laststatus = 3
vim.opt.showtabline = 2
vim.opt.cursorline = true
vim.opt.relativenumber = true
vim.opt.winblend = 0
vim.opt.pumblend = 0

-- 2. IVAN-STYLE FLOATING WINDOWS (The Spotlight Look)
local border = {
  { "╭", "FloatBorder" },
  { "─", "FloatBorder" },
  { "╮", "FloatBorder" },
  { "│", "FloatBorder" },
  { "╯", "FloatBorder" },
  { "─", "FloatBorder" },
  { "╰", "FloatBorder" },
  { "│", "FloatBorder" },
}

-- Apply to LSP Handlers
vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = border })
vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signatureHelp, { border = border })
vim.diagnostic.config({ float = { border = border } })

-- THE FIX: Protected call for lspconfig UI
pcall(function()
  require("lspconfig.ui.windows").default_options.border = border
end)

-- 3. GO TABS
vim.api.nvim_create_autocmd("FileType", {
  pattern = "go",
  callback = function()
    vim.opt_local.tabstop = 4
    vim.opt_local.shiftwidth = 4
    vim.opt_local.expandtab = false
  end,
})

vim.o.statusline = "%f %y %m %= 󰙅 DESIGNED BY NAVEED"