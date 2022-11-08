-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Colorscheme Stuff
  use 'ellisonleao/gruvbox.nvim' 

  -- LSP Plugin
  use 'neovim/nvim-lspconfig'

  -- Telescope
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- bracket autocompletion
  use 'vim-scripts/auto-pairs-gentle'

end)
