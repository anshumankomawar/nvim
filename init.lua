--[[
  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
Neovim init file
Version: 0.2.1 - 11/14/2021 10:50
Maintainer: Anshuman Komawar
Website: https://github.com/anshumankomawar/nvim
--]]

-----------------------------------------------------------
-- Import Lua modules
-----------------------------------------------------------
require('settings')
require('keymaps')
require('plugins/packer')
require('plugins/nvim-treesitter')
require('plugins/nvim-lspconfig')
require('plugins/nvim-cmp')
vim.cmd('source ~/.config/nvim/lua/terminal.vim')
--vim.cmd('source ~/.config/nvim/lua/plugins/lspconfig.vim')
