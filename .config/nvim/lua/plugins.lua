local ok, packer = pcall(require, 'packer')
if not ok then
    -- not intalled
    print('packer not installer')
    return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'neovim/nvim-lspconfig'
  use 'andweeb/presence.nvim'
  use {'neoclide/coc.nvim', branch = 'release'}
  use 'wakatime/vim-wakatime'
  use {'catppuccin/nvim', as = 'catppuccin'}
  use 'nvim-lualine/lualine.nvim'
  use {
  'kyazdani42/nvim-tree.lua',
  as = 'nvim-tree',
  requires = {
    'kyazdani42/nvim-web-devicons', -- optional, for file icons
  },
  tag = 'nightly' -- optional, updated every week. (see issue #1193)
}
  use 'kyazdani42/nvim-web-devicons'
  use 'mhinz/vim-signify'

end)
