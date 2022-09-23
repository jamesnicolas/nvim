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
  use({ 'ms-jpq/coq_nvim', commit = '84ec5faf2aaf49819e626f64dd94f4e71cf575bc' })
  use { 'ms-jpq/coq.artifacts', branch = 'artifacts' }
  use { 'ms-jpq/coq.thirdparty',  branch = '3p' }
  use 'neovim/nvim-lspconfig'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'johmsalas/text-case.nvim'
  use 'hashivim/vim-terraform'

end)


