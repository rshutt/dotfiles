scriptencoding UTF-8
packadd! onedark.vim

let g:polygot_disabled = [ 'markdown', 'jenkins' ]
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']
let g:ale_virtualtext_cursor = 0
let g:ale_yaml_yamllint_options = '-d "{extends: relaxed, rules: {line-length: {max: 120, level: warning}}}"'
let g:ale_list_window_size = 5
let g:ale_set_quickfix = 1
let g:ale_set_loclist = 0
let g:ale_open_list = 1
let g:ale_disable_lsp = 1
let g:ale_sign_column_always = 1
let g:ale_fix_on_save = 1
let g:ale_sh_bashate_options = '-i E003 --max-line-length 100'
let g:ale_history_log_output = 1
let g:ale_use_global_executables = 1
let g:ale_completion_enabled = 1
let g:ale_linters = { 'Jenkinsfile': ['checkci'] }
let g:ale_fixers = {
      \   'python': ['isort', 'black'],
      \   'javascript': ['prettier'],
      \   'javascriptreact': ['prettier'],
      \   'json': ['prettier'],
      \   'sql': ['sqlformat'],
      \   'terraform': ['terraform', 'remove_trailing_lines', 'trim_whitespace'],
      \   'markdown': ['pandoc'],
      \   '*': ['remove_trailing_lines', 'trim_whitespace']
      \}

set background=dark
colorscheme onedark

if executable('tmux') && filereadable(expand('~/.bashrc')) && $TMUX !=# ''
  let g:vimIsInTmux = 1
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set t_Co=256
  if (has('termguicolors'))
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
"set nocompatible
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

"augroup markdown
"    au!
"    au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
"augroup END

"au BufRead,BufNewFile */Jenkins/*.yml set filetype=yaml.ansible

set laststatus=2

nmap <F2> :ToggleBufExplorer<CR>
nmap <F3> :NERDTree<CR>

nmap [1;2H :bn<CR>
nmap [1;2F :bp<CR>

source $HOME/.vim/lightlinerc
source $HOME/.vim/tmuxlinerc
source $HOME/.vim/promptlinerc
source $HOME/.vim/cocnvimrc

nnoremap <leader>gd :Gvdiff!<CR><C-w><UP>
nnoremap gdh :diffget //2<CR>]c<CR>
nnoremap gdl :diffget //3<CR>]c<CR>
nnoremap <leader>gr :Git rebase --continue<CR>
nnoremap <leader>gw :Gw!<CR>
nnoremap <leader>gs :G<CR>:10wincmd_<CR>

" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL

highlight cursorline cterm=underline
highlight colorcolumn ctermbg=53

set runtimepath+=/usr/local/opt/fzf

let g:fzf_history_dir='~/.local/share/fzf-history'

set guifont=LiterationMonoPowerline:h17

augroup vimrc
  autocmd!
  au BufEnter * call MyLastWindow()
augroup END

function! MyLastWindow()
  " if the window is quickfix go on
  if &buftype==?'quickfix'
    " if this window is last on screen quit without warning
    if winnr('$') < 2
      quit
    endif
  endif
endfunction

function! BSkipQuickFix(command)
  let start_buffer = bufnr('%')
  execute a:command
  while &buftype ==# 'quickfix' && bufnr('%') != start_buffer
    execute a:command
  endwhile
endfunction

nnoremap <Tab> :call BSkipQuickFix("bn")<CR>
nnoremap <S-Tab> :call BSkipQuickFix("bp")<CR>

augroup qf
  autocmd!
  autocmd FileType qf set nobuflisted
augroup END

set hidden
set runtimepath+=/usr/local/opt/fzf
