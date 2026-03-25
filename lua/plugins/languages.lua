return {
  -- 1. THE GO TOOLKIT (Cleaned up dependencies)
  {
    "ray-x/go.nvim",
    dependencies = {
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("go").setup()
    end,
    event = { "CmdlineEnter" },
    ft = { "go", "gomod" },
    build = ':lua require("go.install").update_all_sync()',
  },

  -- 2. THE RUST TOOLKIT
  {
    "mrcjkb/rustaceanvim",
    version = "^4",
    ft = { "rust" },
  },

  -- 3. CRATES
  {
    "saecki/crates.nvim",
    tag = "stable",
    event = { "BufRead Cargo.toml" },
    opts = {
      completion = {
        cmp = { enabled = true },
      },
    },
  },
}