local keymap = vim.keymap

-- tabs
keymap.set('n', 'tn', ':tabedit<Return>', {silent = true})
keymap.set('n', 'tt', ':terminal<Return>', {silent = true})

-- splits
keymap.set('n', 'vv', ':vsp<Return>', {silent = true})
keymap.set('n', 'bb', ':sp<Return>', {silent = true})

-- move
keymap.set('n', 'q<Right>', '<C-w>l')
keymap.set('n', 'q<Down>', '<C-w>j')
keymap.set('n', 'q<Left>', '<C-w>h')
keymap.set('n', 'q<Up>', '<C-w>k')

keymap.set('n', 'ql', '<C-w>l')
keymap.set('n', 'qj', '<C-w>j')
keymap.set('n', 'qh', '<C-w>h')
keymap.set('n', 'qk', '<C-w>k')

-- nvim tree
keymap.set('n', '<C-n>', ':NvimTreeToggle<Enter>', {silent = true})

-- coc.nvim
vim.cmd([[
inoremap <silent><expr> <cr> coc#pum#visible() && coc#pum#info()['index'] != -1 ? coc#pum#confirm() : "\<C-g>u\<CR>"
]])

-- miscelanious
keymap.set('n', 'q', '')