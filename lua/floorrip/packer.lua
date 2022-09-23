-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself

  use 'wbthomason/packer.nvim'
  use 'christoomey/vim-tmux-navigator'
  use 'tpope/vim-fugitive'
  use 'overcache/NeoSolarized'
  use 'wellle/targets.vim'
  use 'tpope/vim-rhubarb'
  use 'nvim-lualine/lualine.nvim'
  use 'machakann/vim-sandwich'
  use { 'ms-jpq/coq_nvim', branch = 'coq' }
  use { 'ms-jpq/coq.artifacts', branch = 'artifacts' }
  use { 'ms-jpq/coq.thirdparty',  branch = '3p' }
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'johmsalas/text-case.nvim'
  use 'hashivim/vim-terraform'

end)


