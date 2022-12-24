-----------------------------------------------------------
-- Plugin manager configuration file
-----------------------------------------------------------


-- Plugin manager: packer.nvim
-- https://github.com/wbthomason/packer.nvim


local cmd = vim.cmd
local fn = vim.fn
cmd [[packadd packer.nvim]]

-- Add packages
return require('packer').startup({function(use)
  use 'wbthomason/packer.nvim' -- packer can manage itself

  -- colorscheme
  use 'morhetz/gruvbox'

  -- github
  use 'github/copilot.vim'
  use 'tpope/vim-fugitive'

  -- fuzzy finder
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- lsp
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},

      -- Snippets
      {'L3MON4D3/LuaSnip'},
      {'rafamadriz/friendly-snippets'},
    }
  }

  -- harpoon
  use 'ThePrimeagen/harpoon'

  -- comments
  use 'preservim/nerdcommenter'

  -- filetree
  use 'preservim/nerdtree'

  -- treesitter parser
  use({'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'})
  use('nvim-treesitter/playground')

  -- undo tree
  use('mbbill/undotree')
end,
config = {
  compile_path = fn.stdpath('cache')..'/plugin/packer_compiled.lua',
}})
