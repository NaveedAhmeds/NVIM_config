return {
  -- 1. TODO Highlighter
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = { signs = true },
  },

  -- 2. Fast Navigation (Hop)
  {
    "smoka7/hop.nvim",
    version = "*",
    opts = { keys = "etovxqpdygfblzhckisuran" },
    keys = {
      { "s", "<cmd>HopChar2<cr>", mode = { "n", "x" }, desc = "Hop to 2 Chars" },
    },
  },

  -- 3. Auto-Save (The "Lazy" Way)
  {
    "Pocco81/auto-save.nvim",
    opts = {
      enabled = true,
      execution_message = { message = "󰆓 Saved" },
      trigger_events = { "InsertLeave", "TextChanged" },
    },
  },
}
