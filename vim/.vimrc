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
set nowrap
set incsearch
set scrolloff=8
set smartcase
set autoindent

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

    " Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
    Plug 'junegunn/vim-easy-align'
    Plug 'junegunn/vim-emoji'                           " Vim emojis

    " Productivity
    Plug 'vimwiki/vimwiki'                              " VimWiki 
    
    " Dim paragraphs above and below the active paragraph.
    Plug 'junegunn/limelight.vim'

    " Distraction free writing by removing UI elements and centering everything.
    Plug 'junegunn/goyo.vim'

    " Any valid git URL is allowed
    Plug 'https://github.com/junegunn/vim-github-dashboard.git'

    " Multiple Plug commands can be written in a single line using | separators
    Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

    " On-demand loading
    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
    Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

    " Using a non-default branch
    Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

    " Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
    Plug 'fatih/vim-go', { 'tag': '*' }

    " Plugin options
    Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

    " Plugin outside ~/.vim/plugged with post-update hook
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

    " Unmanaged plugin (manually installed and updated)
    Plug '~/my-prototype-plugin'

    " Create file system explorer
    Plug 'preservim/nerdtree'

    " Gruvbox theme
    Plug 'morhetz/gruvbox'

call  plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim-Instant-Markdown
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Color Scheme

set termguicolors
set background=dark
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox
