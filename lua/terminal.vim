"""""VIM TERMINAL CONFIG"""""
function! TerminalWrapper(command) abort
	if !exists('g:split_term_style') | let g:split_term_style = 'vertical' | endif
	if g:split_term_style ==# 'vertical'
		let buffercmd = 'vnew'
	elseif g:split_term_style ==# 'horizontal'
		let buffercmd = 'new'
	else
		echoerr 'ERROR! g:split_term_style is not a valid value (must be ''horizontal'' or ''vertical'' but is currently set to ''' . g:split_term_style . ''')'
		throw 'ERROR! g:split_term_style is not a valid value (must be ''horizontal'' or ''vertical'')'
	endif
  exec 'w'
	exec buffercmd
    if exists('g:split_term_resize_cmd')
		exec g:split_term_resize_cmd
	endif
	exec 'term ' . a:command
	exec 'startinsert'
endfunction

function! TerminalTab() abort
  exec 'tabnew'
  exec 'terminal'
  exec 'startinsert'
endfunction

let g:split_term_style = 'horizontal'
let g:split_term_resize_cmd = 'resize 20'
"""""""""""""""""""""""""""""

"""""EMPTY TERMINAL"""""
command! -nargs=0 CreateTerminalTab call TerminalTab()
nnoremap <C-t> :CreateTerminalTab<CR>
"command! -nargs=0 CreateTerminal call TerminalWrapper(printf(''))
"nnoremap <C-t> :split<CR> :terminal<CR>
""""""""""""""""""""""""

"""""LANGUAGE COMPILE AND RUN CONFIGURATION"""""
" PYTHON "
command! -nargs=0 PYLINT call TermninalWrapper(printf('pylint %s', expand('%')))
command! -nargs=0 COVERAGE call TerminalWrapper(printf('python3 -m coverage run %s && python3 -m coverage report -m', expand('%')))
command! -nargs=0 PYTHON call TerminalWrapper(printf('python3 %s', expand('%')))
command! -nargs=0 MYPY call TerminalWrapper(printf('mypy %s', expand('%')))

" JAVA "
command! -nargs=0 JAVA call TerminalWrapper(printf('javac %s && java %s', expand('%'), expand('%:r')))
command! -nargs=0 JUNIT call TerminalWrapper(printf('javac %s && java org.junit.runner.JUnitCore %s', expand('%'), expand('%:r')))

" C++ "
command! -nargs=0 CPP call TerminalWrapper(printf('clang++ -std=c++17 %s -o ./Output/%s.out && .//Output/%s.out', expand('%'), expand('%'), expand('%')))

" C "
"command! -nargs=0 CRUN call TerminalWrapper(printf('make %s && ./%s', expand('%:r'), expand('%:r')))
command! -nargs=0 C225 call TerminalWrapper(printf('gcc -Wall -Werror -ansi -pedantic %s && ./%s', expand('%'), expand('%:r')))

" GO "
command! -nargs=0 GORUN call TerminalWrapper(printf('go run %s', expand('%')))
command! -nargs=0 GOBUILD call TerminalWrapper(printf('go build %s', expand('%')))
command! -nargs=0 GOINSTALL call TerminalWrapper(printf('go install')) 

" AWS "
command! -nargs=0 AWSDEPLOY call TerminalWrapper(printf('sam build && sam deploy'))
command! -nargs=0 AWSLOCAL call TerminalWrapper(printf('sam build && sam local start-api --skip-image-pull'))
""""""""""""""""""""""""""""""""""""""""""""""""

"""""GO AUTOCOMMANDS"""""
augroup GoToolKit
  autocmd!
  autocmd FileType go nnoremap <leader>fj :w<CR> :!go run %<CR>
  autocmd FileType go nnoremap <leader>r :GORUN<CR>
  autocmd FileType go nnoremap <leader>gb :GOBUILD<CR>
  autocmd FileType go nnoremap <leader>gi :GOINSTALL<CR>
augroup END
"""""""""""""""""""""""""

"""""CPP AUTOCOMMANDS"""""
augroup CppToolKit
    autocmd!
    autocmd FileType cpp nnoremap <leader>fj :w<CR> :!clang++ -std=c++17 % -o ./Output/%.out && .//Output/%.out<CR>
    autocmd FileType cpp nnoremap <leader>r :CPP<CR>
augroup END
""""""""""""""""""""""""""

"""""C AUTOCOMMANDS"""""
augroup CToolKit
    autocmd!
    autocmd FileType c nnoremap <leader>fj :w<CR> :!clang++ -std=c++17 % -o ./Output/%.out && .//Output/%.out<CR>
    autocmd FileType c nnoremap <leader>r :C225<CR>
augroup END
""""""""""""""""""""""""""

"""""PYTHON AUTOCOMMANDS"""""
augroup PythonToolKit
    autocmd!
    autocmd FileType python nnoremap <leader>fj :w<CR> :!python3 %<CR>
    autocmd FileType python nnoremap <leader>r :PYTHON<CR>
    autocmd FileType python nnoremap <leader>p :PYLINT<CR>
    autocmd FileType python nnoremap <leader>fc :COVERAGE<CR>
    autocmd FileType python nnoremap <leader>tc :MYPY<CR>
augroup END
"""""""""""""""""""""""""""""

"""""JAVA AUTOCOMMANDS"""""
augroup JavaToolKit
    autocmd!
    autocmd FileType java nnoremap <leader>fj :w<CR> :!javac % && java %<CR>
    autocmd FileType java nnoremap <leader>r :JAVA<CR>
    autocmd FileType java nnoremap <leader>tc :JUNIT<CR>
augroup END
"""""""""""""""""""""""""""

"""""COMMENT AUTOCOMMANDS"""""
"augroup Comments
"    autocmd!
"    autocmd FileType go,java,javascript nnoremap <leader>c I//<Space><esc>
"    autocmd FileType python nnoremap <leader>c I#<Space><esc>
"
"    autocmd FileType go,java,javascript nnoremap <leader>rc I<esc><c-v>2ld<esc>
"    autocmd FileType python nnoremap <leader>rc I<esc>d2l<esc>
"augroup END
""""""""""""""""""""""""""""""
