return {
  -- 1. THE COMMAND CENTER (Reverted to your clean settings)
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      terminal = {
        win = {
          position = "float",
          backdrop = 100, 
          width = 0.6,
          height = 0.6,
          border = "rounded",
          winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
        },
      },
      dashboard = { enabled = false },
      indent = { enabled = true, char = "▏" }, 
      scope = { enabled = true }, 
    },
  },

  -- 2. SPOTLIGHT-STYLE COMMAND LINE (Reverted)
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      lsp = {
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.set_formatting_op"] = true,
        },
      },
      presets = {
        command_palette = true, 
        long_message_to_split = true,
        bottom_search = false, 
      },
      views = {
        cmdline_popup = {
          position = { row = "15%", col = "50%" },
          size = { width = 60, height = "auto" },
          border = { style = "rounded", padding = { 0, 1 } },
        },
      },
    },
  },

  -- 3. THE MIRROR WINBAR (Top Pills)
  {
    "utilyre/barbecue.nvim",
    name = "barbecue",
    version = "*",
    dependencies = { "SmiteshP/nvim-navic", "nvim-tree/nvim-web-devicons" },
    opts = {
      theme = "nord",
      attach_navic = true,
      show_modified = true,
      -- Mirroring the bottom bar's pill ends
      lead_custom_section = function() return " " end,
      custom_section = function() return " " end,
    },
  },

  -- 4. THE PILL STATUSLINE (Perfection)
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

  -- 5. THE DESIGNER EXPLORER (Neo-tree UI Enhancements)
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = { width = 30 },
      filesystem = {
        group_empty_dirs = true,
        follow_current_file = { enabled = true },
      },
      default_component_configs = {
        indent = {
          with_markers = true,
          indent_marker = "│",
          last_indent_marker = "└",
          highlight = "NeoTreeIndentMarker",
        },
      },
      event_handlers = {
        {
          event = "neo_tree_buffer_enter",
          handler = function()
            -- Link Neo-tree to the Sidebar highlight for a distinct look
            vim.cmd 'highlight! link NeoTreeNormal NormalSB'
            vim.cmd 'highlight! link NeoTreeNormalNC NormalSB'
            vim.cmd 'highlight! NeoTreeCursorLine guibg=#3b4252' -- Highlight active file
          end,
        },
      },
    },
  },
}