set encoding=utf-8
syntax enable

call plug#begin()
Plug 'preservim/NERDTree'
Plug 'wadackel/vim-dogrun'
call plug#end()

"syntax on
set statusline=%{getcwd()}\/\%f%=%-14.(%l,%c%V%)\ %P
" Cursor
au WinLeave * set nocursorline
au WinEnter * set cursorline
set cursorline
set number
" Mouse
set mouse=a
""set clipboard+=named
" iteration lines
set listchars=tab:.\ ,eol:<
set list
" File Explorer
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 15
" Open Explorer command
map <silent> <C-n> :Vexplore<CR>
" Open Terminal command
map <silent> <C-t> :rightbelow term bash<CR>
" Open new vertical window
map <silent> <C-l> :rightbelow vsplit<CR>
" Auto-open explorer
"augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :Vexplore
"augroup END
" Auto open explorer and terminal
"autocmd VimEnter *
"    \ Vexplore |
"    \ execute "wincmd l" |
"    \ rightbelow term bash
" Search
set incsearch
set hlsearch
" Mode
set showmode
" Highlight commads
set showcmd
set wildmenu
" Save
set autowriteall
set commentstring=\ #\ %s
set shell=bash\ -login
" Theme
colorscheme dogrun
"colorscheme dark-meadow
""colorscheme atom-dark
""colorscheme pulumi
if has('termguicolors')
   set termguicolors
endif
" Theme neon
set background=dark
" dogrun
let g:lightline = {'colorscheme' : 'dogrun'}
let g:clap_theme = 'dogrun'
"let g:edge_style = 'neon'
"let g:edge_style = 'aura'
"let g:edge_enable_italic = 1
"let g:edge_disable_italic_comment = 1
"let g:airline_theme = 'edge'
"let g:lightline = {'colorscheme' : 'edge'}
"colorscheme edge

" Them sonokai
"let g:sonokai_style='andromeda'
"let g:sonokai_enable_italic = 1
"let g:sonokai_disable_italic_comment = 1
"colorscheme sonokai
"let g:airline_theme = 'sonokai'
"let g:lightline = {'colorscheme' : 'sonokai'}

"set background=dark
"colorscheme quantum
" To enable file
filetype on
augroup python_settings
	autocmd FileType python source $HOME/.vim/python.vim
augroup END
augroup c_settings
	autocmd FileType c source $HOME/.vim/c.vim
augroup END
augroup cpp_settings
	autocmd FileType cpp source $HOME/.vim/cpp.vim
augroup END
augroup java_settings
	autocmd FileType java source $HOME/.vim/java.vim
"	runtime! $HOME/.vim/java.vim
""	let b: "java.vim"
augroup END
augroup header_settings
	autocmd FileType h source $HOME/.vim/h.vim
augroup END
augroup asm_settings
	autocmd FileType asm source $HOME/.vim/asm.vim
augroup END
augroup sh_settings
	autocmd FileType sh source $HOME/.vim/bash.vim
augroup END
augroup full_stack_settings
	autocmd FileType html source $HOME/.vim/full.vim
	autocmd FileType css source $HOME/.vim/full.vim
	autocmd FileType javascript source $HOME/.vim/full.vim
augroup END
" close brackets
:inoremap ( ()<Esc>i
":inoremap < <><Esc>i
:inoremap { {}<Esc>i
:inoremap [ []<Esc>i
:inoremap " ""<Esc>i
:inoremap ' ''<Esc>i
:inoremap ` ``<Esc>i

