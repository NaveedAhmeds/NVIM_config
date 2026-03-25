return {
  {
    "nordtheme/vim",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme "nord"
      local nord_bg = "#2e3440"
      local surface = "#3b4252" -- Island Surface
      local frost = "#88c0d0"
      
      -- 1. BASE BACKGROUNDS
      local groups = { "Normal", "NormalNC", "NormalFloat", "Terminal" }
      for _, group in ipairs(groups) do
        vim.api.nvim_set_hl(0, group, { bg = nord_bg })
      end

      -- 2. THE FLOATING ISLAND WINBAR (The "Next Level" Fix)
      -- We give the winbar a background so it looks like a separate pill island
      vim.api.nvim_set_hl(0, "BarbecueNormal", { bg = surface, fg = "#D8DEE9", bold = true })
      vim.api.nvim_set_hl(0, "WinBar", { bg = surface, fg = frost })
      vim.api.nvim_set_hl(0, "WinBarNC", { bg = surface, fg = "#4C566A" })
      
      -- 3. BORDERS & SEPARATORS
      vim.api.nvim_set_hl(0, "FloatBorder", { fg = frost, bg = nord_bg })
      vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#343b48", bg = "none" })
      
      -- 4. SIDEBAR
      vim.api.nvim_set_hl(0, "NormalSB", { bg = "#292e39" })
      
      -- 5. SATURATION BOOST
      vim.api.nvim_set_hl(0, "@function", { fg = frost, bold = true })
      vim.api.nvim_set_hl(0, "LualineDesignerCredit", { fg = frost, bg = surface, bold = true })
    end,
  },
}