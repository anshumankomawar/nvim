-----------------------------------------------------------
-- Keymaps configuration file: keymaps of neovim
-- and plugins.
-----------------------------------------------------------

local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local cmd = vim.cmd
local g = vim.g         				-- global variables
local fn = vim.fn

-----------------------------------------------------------
-- Neovim shortcuts:
-----------------------------------------------------------

map('t', '<ESC>', '<C-\\><C-n>', {noremap = true})
map('n', '<leader>h', ':wincmd h<CR>', {noremap = true})
map('n', '<leader>j', ':wincmd j<CR>', {noremap = true})
map('n', '<leader>k', ':wincmd k<CR>', {noremap = true})
map('n', '<leader>l', ':wincmd l<CR>', {noremap = true})
--map('n', '<leader>u', ':UndotreeShow<CR>', {noremap = true})
map('n', '<leader>pv', ':wincmd v<bar> :Ex<CR>', {noremap = true})
map('n', '<leader>ps', ':Rg<SPACE>', {noremap = true})
map('n', '<Tab>', ':tabnext<CR>', {noremap = true})
map('n', '<S-Tab>', ':tabprevious<CR>', {noremap = true})
map('n', '<leader>t', ':tabnew<CR>', {noremap = true})
map('n', '<Leader>+', ':vertical resize +5<CR>', {noremap = true, silent = true})
map('n', '<Leader>-', ':vertical resize -5<CR>', {noremap = true, silent = true})
map('n', '<leader>t', ':tabnew<CR>', {noremap = true})
map('n', '<leader>fmt', ':Format<CR>', {noremap = true})
map('n', '<leader>q', ':xa<CR>', {noremap = true})
cmd[[command! Format execute 'lua vim.lsp.buf.formatting()']]
map('v', '<C-c>', '"*y', {noremap = true})

wildmenumode = function()
    return fn.wildmenumode() ~= 0
end
map('c', '<space>', 'wildmenumode() ? "<Down>" : "\\<space>"', {noremap = true, expr = true})

-----------------------------------------------------------
-- Nerdtree shortcuts:
-----------------------------------------------------------
map('n', '<leader>.', ':NERDTreeToggle<CR>', default_opts)       -- open/close
map('n', '<leader>r', ':NERDTreeRefreshRoot<CR>', default_opts)  -- refresh

cmd [[autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif]]
g.NERDTreeRespectWildIgnore=1
