local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()
--vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)	
  use "ellisonleao/gruvbox.nvim"
  use 'sainnhe/gruvbox-material'
  use 'wbthomason/packer.nvim'
  use 'theprimeagen/harpoon'
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-lualine/lualine.nvim'
  use {'romgrk/barbar.nvim', requires = 'nvim-web-devicons'}
 -- use 'nvim-treesitter/nvim-treesitter'
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} } 
  }
  --Completion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use "rafamadriz/friendly-snippets"

  --LSP configurations
  use "williamboman/mason.nvim"
  use "neovim/nvim-lspconfig"
  use "williamboman/mason-lspconfig.nvim"
  use "glepnir/lspsaga.nvim"


  --Frontend config 
  --use 'prettier/vim-prettier'
--  use 'maxmellon/vim-jsx-pretty'

--  use 'nvim-treesitter/playground'
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'MunifTanjim/prettier.nvim'
  use 'styled-components/vim-styled-components'
 -- use 'leafgarland/typescript-vim'
  --use 'peitalin/vim-jsx-typescript'

  if packer_bootstrap then 
	  require('packer').sync()
  end 
end)
