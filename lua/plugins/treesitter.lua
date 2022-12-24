-----------------------------------------------------------
-- Treesitter configuration file
-----------------------------------------------------------

-- Plugin: nvim-treesitter
-- https://github.com/nvim-treesitter/nvim-treesitter


--require('nvim-treesitter.configs').setup{highlight = {enable = true}}
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "help", "javascript", "typescript", "c", "lua", "rust" }, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
  auto_install = true,
  --ignore_install = { "javascript" }, -- List of parsers to ignore installing
  highlight = {
    enable = true,              -- false will disable the whole extension
  },
  indent = {
    enable = true
  }
}
