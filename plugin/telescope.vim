lua require('telescope_config')

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fg :lua require('telescope.builtin').git_files()<CR>
nnoremap <leader>vrc :lua require('telescope_config').search_dotfiles()<CR>
nnoremap <leader>gc :lua require('telescope_config').git_branches()<CR>

