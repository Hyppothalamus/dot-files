set number  " sets linenumbers
set mouse=a
hi CursorLineNr guifg=#af00af
set cursorline
set cursorlineopt=number
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=4    " Indents will have a width of 4

set softtabstop=4   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces

" keybinds
nnoremap <silent> tn :tabnew<Enter>
nnoremap <silent> tt :terminal<Enter>

nnoremap <silent> vsp :vsp<Enter>
nnoremap <silent> hsp :split<Enter>

nnoremap s<Right> <C-w>l
nnoremap s<Down> <C-w>j
nnoremap s<Left> <C-w>h
nnoremap s<Up> <C-w>k
nnoremap sl <C-w>l
nnoremap sj <C-w>j
nnoremap sh <C-w>h
nnoremap sk <C-w>k

" nvim_tree keybinds
nnoremap <silent> <C-n> :NvimTreeToggle<CR>
nnoremap <silent> <leader>r :NvimTreeRefresh<CR>
nnoremap <silent> <leader>n :NvimTreeFindFile<CR>

" select coc.nvim autocompletion
inoremap <silent><expr> <cr> coc#pum#visible() && coc#pum#info()['index'] != -1 ? coc#pum#confirm() : "\<C-g>u\<CR>"

call plug#begin()
Plug 'pangloss/vim-javascript'
Plug 'neovim/nvim-lspconfig'
Plug 'RishabhRD/popfix'
Plug 'RishabhRD/nvim-finder'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
let g:coc_global_extension = ['coc-tsserver', 'coc-tslint-plugin', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-jedi', 'coc-sh', 'coc-go']
Plug 'andweeb/presence.nvim'
Plug 'wakatime/vim-wakatime'
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build', 'branch': 'main' }
Plug 'ellisonleao/glow.nvim'
Plug 'mhinz/vim-signify'
call plug#end()

" call custom configs per plugin
lua << END
require('custom_lualine')
require('custom_catppuccin')
require('custom_tree')
END

" neovide specific settings
let g:neovide_refresh_rate = 75
let g:neovide_transparency = 0.5

" nvim_tree global settings
let g:nvim_tree_refresh_wait = 500 "1000 by default, control how often the tree can be refreshed, 1000 means the tree can be refresh once per 1000ms.


set termguicolors " this variable must be enabled for colors to be applied properly
