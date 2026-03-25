return {
  -- 1. The "Command Center" (Apple-Style Rounded Terminal)
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      terminal = {
        win = {
          position = "float",
          backdrop = 100, -- Solid background
          width = 0.5, -- 80% screen width
          height = 0.5, -- 80% screen height
          border = "rounded", -- Soft Apple-style corners
        },
      },
      dashboard = { enabled = false },
    },
  },

  -- 2. Apple-Style Command Line (Noice.nvim)
  -- This moves the ":" bar to a rounded floating box in the center
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      lsp = {
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.set_formatting_op"] = true,
          ["typing.hover"] = true,
        },
      },
      presets = {
        command_palette = true, -- Center command line like Spotlight
        long_message_to_split = true,
      },
      views = {
        cmdline_popup = {
          border = {
            style = "rounded", -- Rounded corners for the command bar
          },
          filter_options = {},
          win_options = {
            winhighlight = "Normal:Normal,FloatBorder:DiagnosticInfo",
          },
        },
      },
    },
  },

  -- 3. The Top Bar (Clean & Flat)
  {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    opts = {
      options = {
        mode = "buffers",
        separator_style = "thin",
        always_show_bufferline = true,
        show_buffer_close_icons = false,
        show_close_icon = false,
      },
    },
  },

  -- 4. Status Line (Designer Credit)
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      table.insert(opts.sections.lualine_x, {
        function()
          return "󰙅 DESIGNED BY NAVEED"
        end,
        color = { fg = "#7aa2f7", gui = "bold" },
      })
    end,
  },
}
