return {
  -- 1. NEXT-LEVEL TERMINAL (Handheld Console Style)
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      terminal = {
        win = {
          position = "float",
          backdrop = 80, 
          width = 0.65,
          height = 0.65,
          border = "rounded",
          title = "   TERMINAL ",
          title_pos = "center",
          winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
        },
      },
      indent = { enabled = true, char = "▏" }, 
    },
  },

  -- 2. NEXT-LEVEL COMMAND LINE (Spotlight Search)
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      views = {
        cmdline_popup = {
          position = { row = "30%", col = "50%" },
          size = { width = 60, height = "auto" },
          border = { 
            style = "rounded", 
            padding = { 0, 1 },
            text = { top = "   SPOTLIGHT ", top_align = "center" },
          },
          win_options = {
            winhighlight = { Normal = "NormalFloat", FloatBorder = "FloatBorder" },
          },
        },
      },
    },
  },

  -- 3. THE "FLOATING ISLAND" TOP BAR (The Level Up)
  {
    "utilyre/barbecue.nvim",
    name = "barbecue",
    version = "*",
    dependencies = { "SmiteshP/nvim-navic", "nvim-tree/nvim-web-devicons" },
    opts = {
      theme = "nord",
      attach_navic = true,
      show_modified = true,
      -- WE USE THICK CAPSULES FOR THE TOP BAR
      lead_custom_section = function() return " " end,
      custom_section = function() return " " end,
      symbols = { 
        separator = "  ", 
        modified = "󰚔", -- Animated feel icon
        dir = "󰉖",
      },
      kinds = {
        File = "󰟓", -- Gopher at the top
        Folder = "󰉋",
      },
    },
  },

  -- 4. THE PILL STATUSLINE (Symmetry)
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function()
      local frost = "#88C0D0"
      local function gopher_status()
        if vim.bo.filetype ~= "go" then return "" end
        return vim.api.nvim_get_mode().mode == "i" and "󰟔 " or "󰟓 "
      end

      return {
        options = {
          theme = "nord",
          component_separators = "",
          section_separators = { left = "", right = "" },
          globalstatus = true,
        },
        sections = {
          lualine_a = { { "mode", separator = { left = "", right = "" } } },
          lualine_b = { 
            { gopher_status, color = { fg = frost, gui = "bold" } },
            { "branch", icon = "", separator = { left = "", right = "" } } 
          },
          lualine_c = { "%=" }, 
          lualine_x = {
            {
              function() return "󰙅 NAVEED" end,
              color = { fg = frost, gui = "bold" },
              separator = { left = "", right = "" },
            },
          },
          lualine_y = { { "progress", separator = { left = "", right = "" } } },
          lualine_z = { { "location", separator = { left = "", right = "" } } },
        },
      }
    end,
  },

  -- 5. THE DESIGNER EXPLORER
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = { width = 30 },
      event_handlers = {
        {
          event = "neo_tree_buffer_enter",
          handler = function()
            vim.cmd 'highlight! link NeoTreeNormal NormalSB'
            vim.cmd 'highlight! NeoTreeCursorLine guibg=#3b4252' 
          end,
        },
      },
    },
  },
}