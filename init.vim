filetype plugin indent on
syntax on
set number

if (has("termguicolors"))
	set termguicolors
endif

let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"

let mapleader = ","
let maplocalleader = ","

set laststatus=2
set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab
set clipboard=unnamed

nnoremap<C-i> :tabp<CR>
nnoremap<C-o> :tabn<CR>
nnoremap<C-r> :so %<CR>
nnoremap <C-w> :q<CR>
nnoremap <C-s> :w<CR>
nnoremap <leader>D :Dash<Space>

nnoremap <C-t> <cmd>Telescope find_files<cr>
nnoremap <C-f> <cmd>Telescope live_grep<cr>

nnoremap Y Y

nnoremap <esc> :noh<return><esc>

nmap <silent> <leader>d <Plug>DashSearch
nmap <C-_> <leader>c<Space>
vmap <C-_> <leader>c<Space>

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


call plug#begin()
  "Plug '/usr/local/opt/fzf'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'slim-template/vim-slim'
  "Plug 'itchyny/lightline.vim'
  Plug 'preservim/nerdcommenter'
  Plug 'preservim/nerdtree'
  Plug 'Raimondi/delimitMate'
  Plug 'jceb/vim-orgmode'
  Plug 'tpope/vim-speeddating'
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-endwise'
  Plug 'ntpeters/vim-better-whitespace'
  Plug 'mattn/emmet-vim'
  Plug 'rizzatti/dash.vim'
  Plug 'ElmCast/elm-vim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.2' }

  Plug 'evanleck/vim-svelte', {'branch': 'main'}

  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  Plug 'rust-lang/rust.vim'

  Plug 'vim-python/python-syntax'

  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  Plug 'rafi/awesome-vim-colorschemes'
  Plug 'chriskempson/base16-vim'

  Plug 'pangloss/vim-javascript'
  Plug 'leafgarland/typescript-vim'
  Plug 'peitalin/vim-jsx-typescript'
  Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
  Plug 'jparise/vim-graphql'

  Plug 'lommix/godot.nvim'
call plug#end()

let base16colorspace=256  " Access colors present in 256 colorspace
"let g:onedark_termcolors = 16
let g:python_highlight_all = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
let g:airline#extensions#statusline#right_sep = ''

silent !stty -ixon
autocmd VimLeave * silent !stty ixon

if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif
