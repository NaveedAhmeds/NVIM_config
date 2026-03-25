return {
  {
    "nordtheme/vim",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme "nord"
      local nord_bg = "#2e3440"
      local surface = "#3b4252"
      local frost = "#88c0d0"
      
      -- Force standard backgrounds
      local groups = { "Normal", "NormalNC", "NormalFloat", "Terminal" }
      for _, group in ipairs(groups) do
        vim.api.nvim_set_hl(0, group, { bg = nord_bg })
      end

      -- SIDEBAR ENHANCEMENT: Distinct but matching grey
      vim.api.nvim_set_hl(0, "NormalSB", { bg = "#292e39" }) -- Slightly deeper for depth
      vim.api.nvim_set_hl(0, "NeoTreeIndentMarker", { fg = surface })

      -- MIRROR PILL HIGHLIGHTS
      vim.api.nvim_set_hl(0, "BarbecueNormal", { bg = "none", fg = "#D8DEE9" })
      
      -- SATURATION BOOST
      vim.api.nvim_set_hl(0, "@function", { fg = frost, bold = true })
      vim.api.nvim_set_hl(0, "LualineDesignerCredit", { fg = frost, bg = surface, bold = true })
    end,
  },
}