-----------------------------------------------------------
-- Plugin manager configuration file
-----------------------------------------------------------


-- Plugin manager: packer.nvim
-- https://github.com/wbthomason/packer.nvim


local cmd = vim.cmd
local fn = vim.fn
cmd [[packadd packer.nvim]]

local packer = require 'packer'

-- Add packages
return packer.startup({function(use)
  use 'wbthomason/packer.nvim' -- packer can manage itself
  use 'neovim/nvim-lspconfig'
  use 'nvim-lua/completion-nvim'

  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'L3MON4D3/LuaSnip'

  use 'tpope/vim-fugitive'
  use 'preservim/nerdcommenter'
  use 'preservim/nerdtree'
  use 'morhetz/gruvbox'
  use 'nvim-treesitter/nvim-treesitter'
end,
config = {
  compile_path = fn.stdpath('cache')..'/plugin/packer_compiled.lua',
}})
