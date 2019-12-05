call plug#begin(stdpath('data') . '/plugged')

" Load the plugins
" Syntax and Autocompletion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'gioele/vim-autoswap'
Plug 'mattn/emmet-vim'
Plug 'sheerun/vim-polyglot'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-surround'
Plug 'carlitux/deoplete-ternjs'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'Shougo/neco-vim'
Plug 'jceb/vim-orgmode'
Plug 'ponko2/deoplete-fish'

" Tools
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'terryma/vim-multiple-cursors'

" Look and Feel
Plug 'itchyny/lightline.vim'
Plug 'hecal3/vim-leader-guide'
Plug 'Yggdroot/indentLine'
Plug 'ryanoasis/vim-devicons'
Plug 'mhinz/vim-startify'
Plug 'NLKNguyen/papercolor-theme' 
Plug 'ap/vim-buftabline'

" Other
Plug 'tpope/vim-sensible'

call plug#end()

" Look and feel
set background=dark
colorscheme PaperColor
set number
set laststatus=2
set hidden

" Key Bindings
nnoremap <C-]> :bnext<CR>
nnoremap <C-[> :bprev<CR>
nnoremap <C-O> :w<CR>

" Setup Auto-completion
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#ternjs#filetypes = [
\  'jsx',
\  'javascript.jsx',
\  'vue',
\  'javascriptreact',
\]

" Tabs
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set copyindent

" Setup vim-leader-guide
call leaderGuide#register_prefix_descriptions("<Space>", "g:lmap")
nnoremap <silent> <leader> :<c-u>LeaderGuide '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>LeaderGuideVisual '<Space>'<CR>

" Setup leader
nmap <space> <leader>
let g:lmap = {}
let g:lmap.f = {'name': 'files'}
  let g:lmap.f.d = {'name': 'vimrc'}
    let g:lmap.f.d.o = ['e $MYVIMRC', 'open vimrc']
    let g:lmap.f.d.r = ['so $MYVIMRC', 'refresh vimrc']
  let g:lmap.f.o = ['CtrlP', 'open file']
  let g:lmap.f.t = ['NERDTreeToggle', 'open tree']
let g:lmap.w = {'name': 'windows'}
  let g:lmap.w.s = ['split', 'split']
  let g:lmap.w.v = ['vsplit', 'vsplit']
  let g:lmap.w.d = ['hide', 'close current window']
  let g:lmap.w.o = ['only', 'current window only']
let g:lmap.b = {'name': 'buffers'}
  let g:lmap.b.s = ['CtrlPBuffer', 'switch buffer']
  let g:lmap.b.l = ['ls!', 'list buffers']
  let g:lmap.b.w = ['bwipeout', 'wipeout current']
  let g:lmap.b.d = ['bdelete', 'delete current']
  let g:lmap.b.n = ['enew', 'new empty']
let g:lmap.p = {'name': 'plugins'}
  let g:lmap.p.i = ['PlugInstall', 'install plugins']
  let g:lmap.p.u = ['PlugUpdate', 'update plugins']
  let g:lmap.p.s = ['PlugStatus', 'plugin status']
let g:lmap.g = {'name': 'git'}
  let g:lmap.g.p = ['Gpush', 'push']
  let g:lmap.g.c = ['Gcommit', 'commit']
  let g:lmap.g.s = ['Gw', 'stage current file']
  let g:lmap.g.S = ['Git add *', 'stage all']
