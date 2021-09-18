packadd! onedark.vim

let g:polygot_disabled = [ 'markdown', 'jenkins' ]
"let g:syntastic_loc_list_height = 5
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_aggregate_errors = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_python_python_exec = 'python3'
"let g:syntastic_python_flake8_args = "--ignore=E501"
"let g:syntastic_python_flake8_args = "--max-line-length=120"
let g:ale_yaml_yamllint_options = '-d "{extends: relaxed, rules: {line-length: {max: 120, level: warning}}}"'
let g:ale_list_window_size = 5
let g:ale_set_loclist = 1
let g:ale_set_quickfix = 0
"let g:ale_open_list = 1

set background=dark
colorscheme onedark

if executable('tmux') && filereadable(expand('~/.bashrc')) && $TMUX !=# ''
  let g:vimIsInTmux = 1
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set t_Co=256
  if (has("termguicolors"))
    set termguicolors
  endif
endif

if &history < 1000
    set history=1000
endif
if &tabpagemax < 50
  set tabpagemax=50
endif
if !empty(&viminfo)
  set viminfo^=!
endif

set clipboard=unnamed
set noerrorbells
set novisualbell
set t_vb=""
set belloff=all
let g:is_bash=1
set nocompatible
set expandtab
set tabstop=2
set shiftwidth=2
set noshowmode
set cmdheight=2
set shortmess=a
set cursorline
set cursorcolumn
set colorcolumn=80

syntax on

if has('autocmd')
  filetype plugin indent on
endif
if has('syntax') && !exists('g:syntax_on')
  syntax enable
endif

set backspace=indent,eol,start
set complete-=i
set nrformats-=octal

set showtabline=2

packadd! promptline.vim

augroup markdown
    au!
    au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END

au BufRead,BufNewFile */Jenkins/*.yml set filetype=yaml.ansible

set laststatus=2

nmap <F2> :ToggleBufExplorer<CR>
nmap <F3> :NERDTree<CR>
nmap <F4> :execute 'BufGrep /'.expand('<cword>').'/gj' <Bar> cw<CR>

nmap [1;2H :bn<CR>
nmap [1;2F :bp<CR>

source $HOME/.vim/lightlinerc
source $HOME/.vim/tmuxlinerc
source $HOME/.vim/promptlinerc
source $HOME/.vim/cocnvimrc

nnoremap <leader>gd :Gvdiff!<CR><C-w><UP>:resize 10<CR><C-w><DOWN><C-w><RIGHT>1<CR>]c<CR>
nnoremap gdh :diffget //2<CR>]c<CR>
nnoremap gdl :diffget //3<CR>]c<CR>
nnoremap <leader>gr :Grebase --continue<CR>
nnoremap <leader>gw :Gwrite!<CR>
nnoremap <leader>gs :Gstatus<CR>:10wincmd_<CR>

" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL

highlight cursorline cterm=underline
highlight colorcolumn ctermbg=53

set rtp+=/usr/local/opt/fzf

let g:fzf_history_dir="~/.local/share/fzf-history"
