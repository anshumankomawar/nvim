-----------------------------------------------------------
-- Neovim settings
-----------------------------------------------------------

-----------------------------------------------------------
-- Neovim API aliases
-----------------------------------------------------------
local map = vim.api.nvim_set_keymap  -- set global keymap
local cmd = vim.cmd     				-- execute Vim commands
local exec = vim.api.nvim_exec 	-- execute Vimscript
local fn = vim.fn       				-- call Vim functions
local g = vim.g         				-- global variables
local opt = vim.opt         		-- global/buffer/windows-scoped options

-----------------------------------------------------------
-- General
-----------------------------------------------------------
g.mapleader = ' '             -- change leader to a space
opt.swapfile = false          -- don't use swapfile
-- opt.autochdir = true          -- auto change current working dir
opt.exrc = true
opt.hlsearch = false          -- don't highlight search result
opt.errorbells = false        -- don't use error bells
opt.nu = true                 -- show line numbers
opt.wrap = false              -- don't wrap lines
opt.backup = false            -- don't store file backups
opt.undodir = fn.stdpath('cache')..'/nvim/undodir' -- path to undo directory
opt.undofile = true           -- keep undofile
opt.incsearch = true          -- use incremental search
opt.updatetime = 50           -- neovim refresh rate (ms)

-----------------------------------------------------------
-- Neovim UI
-----------------------------------------------------------
opt.showmatch = true          -- highlight matching parenthesis
opt.splitright = true         -- vertical split to the right
opt.splitbelow = true         -- orizontal split to the bottom
opt.ignorecase = true         -- ignore case letters when search
opt.smartcase = true          -- ignore lowercase for the whole pattern
opt.cursorline = true         -- highlight current line
opt.scrolloff = 8             -- lines below last edited line
opt.signcolumn = 'no'
-- opt.colorcolumn = 80

-- remove status line and vertical line
opt.fillchars = 'vert: '      -- replace vertical chars with ' '
opt.showmode = false          -- don't show curr mode
opt.ruler = true              -- show line between splits
opt.laststatus = 0            -- remove status from status line
opt.showcmd = false           -- don't show command in status line
opt.cmdheight = 1             -- lines taken up by command
g['&statusline'] = '%#Normal# ' -- remove uncessary extensions from staus line

-----------------------------------------------------------
-- POPUP UI
-----------------------------------------------------------
--opt.wildmode = {'longest','list','full'}
--opt.wildmenu = true
--opt.wildignore = {'*.pyc', '*_build/*', '**/coverage/*', '**/node_modules/*', '**/android/*', '**/iot/*', '**/.git/*'}

-----------------------------------------------------------
-- Memory, CPU
-----------------------------------------------------------
opt.hidden = true         -- enable background buffers
opt.history = 100         -- remember n lines in history
opt.lazyredraw = true     -- faster scrolling
opt.synmaxcol = 240       -- max column for syntax highlight

-----------------------------------------------------------
-- Colorscheme
-----------------------------------------------------------
cmd [[colorscheme gruvbox]]
cmd [[au VimEnter * highlight CursorLineNR ctermbg=236 ctermfg=243 ]]
cmd [[au VimEnter * highlight CursorLine ctermbg=236]]
cmd [[au VimEnter * highlight EndOfBuffer ctermfg=235 ctermbg=235]]

cmd [[highlight DiagnosticError ctermfg=167 guifg=#282828 guibg=#fb4934]]
cmd [[highlight DiagnosticLineNrError ctermfg=167 guifg=#282828 guibg=#fb4934 gui=bold]]
cmd [[highlight DiagnosticLineNrWarn ctermfg=167 guifg=#282828 guibg=#fb4934 gui=bold]]

cmd [[ 
  sign define DiagnosticSignError text= texthl=DiagnosticSignError linehl= numhl=DiagnosticLineNrError
  sign define DiagnosticSignWarn text= texthl=DiagnosticSignWarn linehl= numhl=DiagnosticLineNrWarn
  sign define DiagnosticSignInfo text= texthl=DiagnosticSignInfo linehl= numhl=DiagnosticLineNrInfo
  sign define DiagnosticSignHint text= texthl=DiagnosticSignHint linehl= numhl=DiagnosticLineNrHint
]]

-----------------------------------------------------------
-- Tabs, indent
-----------------------------------------------------------
opt.expandtab = true      -- use spaces instead of tabs
opt.shiftwidth = 2        -- shift 4 spaces when tab
opt.tabstop = 2           -- 1 tab == 4 spaces
opt.smartindent = true    -- autoindent new lines

-- don't auto commenting new lines
cmd [[au BufEnter * set fo-=c fo-=r fo-=o]]

-- remove line length marker for selected filetypes
cmd [[autocmd FileType python,javatext,markdown,html,xhtml,javascript setlocal cc=0]]


-----------------------------------------------------------
-- NVIM LSP
-----------------------------------------------------------
opt.cot = {'menuone','noinsert'}
g.completion_matching_strategy_list = {'exact', 'substring', 'fuzzy'}
g.completion_enable_auto_popup = 1

-----------------------------------------------------------
-- Startup
-----------------------------------------------------------
-- disable builtins plugins
local disabled_built_ins = {
    "netrw",
    "netrwPlugin",
    "netrwSettings",
    "netrwFileHandlers",
    "gzip",
    "zip",
    "zipPlugin",
    "tar",
    "tarPlugin",
    "getscript",
    "getscriptPlugin",
    "vimball",
    "vimballPlugin",
    "2html_plugin",
    "logipat",
    "rrhelper",
    "spellfile_plugin",
    "matchit"
}

for _, plugin in pairs(disabled_built_ins) do
    g["loaded_" .. plugin] = 1
end

