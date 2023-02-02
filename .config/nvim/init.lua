-- packer
require('plugins')

-- keybindings
require('maps')

-- custon nvim settings and neovide
vim.opt.mouse = "a"
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.cursorlineopt = 'number'
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.termguicolors = true

-- autostart coq
vim.g.coq_settings = { auto_start = 'shut-up' }

-- cmd settings
vim.cmd([[
hi CursorLineNr guifg=#af00af

let g:nvim_tree_refresh_wait = 500

let g:neovide_refresh_rate = 75
let g:neovide_transparency = 0.5
]])
