--[[
  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
Neovim init file
Version: 1.0.0 - 1/3/2022 12:16
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
