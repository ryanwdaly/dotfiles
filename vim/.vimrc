syntax enable
set number
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set incsearch
set scrolloff=8
set smartcase
set autoindent
set nocompatible

setlocal spelllang=en_us

" Commands
command! Config execute ":e $MYVIMRC"

" -----------------------------------------------------------------------------
" Plugins
" -----------------------------------------------------------------------------
" delete this line
filetype plugin on

call plug#begin('~/.vim/plugged')

    " Basics
    Plug 'frazrepo/vim-rainbow'                         " Multi color ()'s  
    Plug 'iamcco/markdown-preview.vim'                  " Markdown viewer

    " Syntax
    Plug 'HerringtonDarkholme/yats.vim'                 " Typescript 
    Plug 'maxmellon/vim-jsx-pretty'                     " React/JSX 
    Plug 'ap/vim-css-color'                             " Color previews for CSS
    Plug 'neoclide/coc.nvim', {'branch': 'release'}     " Intellisense
    " Junegunn
    Plug 'junegunn/vim-easy-align'
    Plug 'junegunn/vim-emoji'                           " Vim emojis
    Plug 'junegunn/limelight.vim'                       " Dim paragraphs above and below the active paragraph.
    Plug 'junegunn/goyo.vim'                            " Remove ui elements
    Plug 'https://github.com/junegunn/vim-github-dashboard.git'         " Any valid git URL is allowed
    Plug 'junegunn/fzf'                                 " Interactive command line filter
    Plug 'junegunn/fzf.vim'

    " Productivity
    Plug 'vimwiki/vimwiki'     
    Plug 'michal-h21/vim-zettel'

    " File System Plugins
    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

    " Multiple Plug commands can be written in a single line using | separators
    Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

    " On-demand loading
    Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

    " Using a non-default branch
    Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

    " Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
    Plug 'fatih/vim-go', { 'tag': '*' }

    " Plugin options
    Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

    " Unmanaged plugin (manually installed and updated)
    Plug '~/my-prototype-plugin'

    " Create file system explorer
    Plug 'preservim/nerdtree'

    " Gruvbox theme
    Plug 'morhetz/gruvbox'

call  plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Settings 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Vimwiki
let g:vimwiki_list = [{'path':'~/scratchbox/vimwiki/markdown/','ext':'.md', 'syntax':'markdown'}, {"path":"~/scratchbox/vimwiki/wiki/"}] " For vim zettel

" Vim Zettel
let g:zettel_options = [{"template" : "~/.vim/templates/zettel-template.tpl"}]
"g:zettel_format|
"g:zettel_default_mappings|
"g:zettel_fzf_command|
"g:zettel_fzf_options|
"g:zettel_backlinks_title|


" Color Scheme
set termguicolors
set background=dark
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox
