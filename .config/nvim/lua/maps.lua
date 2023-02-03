local keymap = vim.keymap
local telescope_maps = require("telescope.builtin")

-- tabs
keymap.set('n', 'tn', ':tabedit<Return>', { silent = true })
keymap.set('n', 'tt', ':terminal<Return>', { silent = true })

-- splits
keymap.set('n', 'vv', ':vsp<Return>', { silent = true })
keymap.set('n', 'bb', ':sp<Return>', { silent = true })
-- close file keybinds
keymap.set('n', 'qq', ':q<Return>', { silent = true })
keymap.set('n', 'qx', ':wq<Return>', { silent = true })
keymap.set('n', 'qw', ':w<Return>', { silent = true })

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
keymap.set('n', '<C-n>', ':NvimTreeToggle<Enter>', { silent = true })

-- lsp config
local opts = { noremap = true, silent = true }
keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)
keymap.set('n', '<C-space>', vim.lsp.buf.format, opts)

-- telescope
keymap.set('n', 'fg', telescope_maps.live_grep, { silent = true })
keymap.set('n', 'fb', telescope_maps.buffers, { silent = true })
keymap.set('n', 'fh', telescope_maps.help_tags, { silent = true })
keymap.set('n', 'fp', telescope_maps.find_files, {})

-- miscelanious
keymap.set('n', 'q', '')
