-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- -- Add this to lua/config/options.lua if you want 4-space tabs for Go
vim.api.nvim_create_autocmd("FileType", {
  pattern = "go",
  callback = function()
    vim.opt_local.tabstop = 4
    vim.opt_local.shiftwidth = 4
    vim.opt_local.expandtab = false -- Go usually prefers real tabs
    vim.opt.guicursor =
      "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"
    vim.opt.relativenumber = true
    -- This makes floating windows (like your new Space + t) slightly transparent
    vim.opt.winblend = 10
    vim.opt.pumblend = 10
    vim.opt.guicursor =
      "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"
    vim.opt.showmode = false
    -- Essential UI Settings
    vim.opt.showtabline = 2 -- Always show the top bar
    vim.opt.winblend = 0 -- NO transparency for windows
    vim.opt.pumblend = 0 -- NO transparency for menus
    vim.opt.relativenumber = true -- Fast navigation
    vim.opt.laststatus = 3 -- Global statusline (cleaner look)

    -- Smoothness
    vim.opt.smoothscroll = true
    -- Force solid terminal background (No Transparency)
    vim.opt.winblend = 0
    vim.opt.pumblend = 0

    -- Custom Statusline Credit
    vim.o.statusline = "%f %y %m %= DESIGNED BY NAVEED AHMED SYED"
    -- Remove the manual statusline line we added earlier
    -- Add these for the new UI:
    vim.opt.cursorline = true -- Highlight the line you are on
    vim.opt.laststatus = 3 -- Global statusline (required for bubbles)
    vim.opt.termguicolors = true -- 24-bit color support
    -- UI & Performance
    vim.opt.showtabline = 2 -- Always show the top bar
    vim.opt.winblend = 0 -- Solid floating windows
    vim.opt.pumblend = 0 -- Solid completion menus
    vim.opt.laststatus = 3 -- Global statusline (cleaner look)
    vim.opt.relativenumber = true -- Fast navigation

    -- Visual Polish
    vim.opt.cursorline = true -- Highlight the line you are on
    vim.opt.smoothscroll = true
  end,
})
