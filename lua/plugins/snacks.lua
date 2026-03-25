return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  keys = {
    { "<leader>sf", function() require("snacks").picker.files() end, desc = "Files" },
    { "<leader>st", function() require("snacks").picker.grep() end, desc = "Text" },
    { "<leader>sb", function() require("snacks").picker.git_branches() end, desc = "Git Branches" },
    { "<leader>su", function() require("snacks").picker.undo() end, desc = "Undo History" },
    -- Apple-style Terminal bind
    { "<leader>t", function() require("snacks").terminal() end, desc = "Floating Terminal" },
  },
  opts = {
    bigfile = { enabled = true },
    quickfile = { enabled = true },
    statuscolumn = { enabled = true },
    picker = {
      enabled = true,
      layout = { layout = { backdrop = false } },
    },
    indent = {
      indent = { char = "▏" },
      scope = { char = "▏", hl = "IndentScope" },
      animate = { enabled = false },
    },
  },
}