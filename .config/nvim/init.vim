
" ___      ___ ___  _____ ______           ________  ________  ________   ________ ___  ________     
"|\  \    /  /|\  \|\   _ \  _   \        |\   ____\|\   __  \|\   ___  \|\  _____\\  \|\   ____\    
"\ \  \  /  / | \  \ \  \\\__\ \  \       \ \  \___|\ \  \|\  \ \  \\ \  \ \  \__/\ \  \ \  \___|    
" \ \  \/  / / \ \  \ \  \\|__| \  \       \ \  \    \ \  \\\  \ \  \\ \  \ \   __\\ \  \ \  \  ___  
"  \ \    / /   \ \  \ \  \    \ \  \       \ \  \____\ \  \\\  \ \  \\ \  \ \  \_| \ \  \ \  \|\  \ 
"   \ \__/ /     \ \__\ \__\    \ \__\       \ \_______\ \_______\ \__\\ \__\ \__\   \ \__\ \_______\
"    \|__|/       \|__|\|__|     \|__|        \|_______|\|_______|\|__| \|__|\|__|    \|__|\|_______|


"""""""""""
" PLUGINS "
"""""""""""

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Code Snippets Engine
Plugin 'SirVer/ultisnips'

" Snippets for ultisnips
Plugin 'honza/vim-snippets'

" Function Signatures
Plugin 'Shougo/echodoc.vim'

" Wal for colorscheme
Plugin 'dylanaraps/wal'

" Autocomplete
Plugin 'Shougo/deoplete.nvim'

" Vim Surround
Plugin 'tpope/vim-surround'

" Linter
Plugin 'w0rp/ale' 

" Auto pairs
Plugin 'jiangmiao/auto-pairs' 

" Multiple Cursors
Plugin 'terryma/vim-multiple-cursors'

" Indent guides
Plugin 'Yggdroot/indentLine' 


call vundle#end()


""""""""""""""""""""
" Plugin Settings "
""""""""""""""""""""

" Autocomplete Settings
let g:deoplete#enable_at_startup = 1
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Indent Guide Settings 
let g:indentLine_char = '▏'
filetype plugin indent on    " required

" Autopairs Config
let g:AutoPairsFlyMode = 0

" Snippets Config
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsListSnippets="<c-tab>"



" uneeded?
"let g:syntastic_always_populate_loc_list = 0
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 0
"let g:syntastic_check_on_wq = 0
"let g:ycm_autoclose_preview_window_after_insertion = 1


""""""""""""""""
" Vim Settings "
""""""""""""""""

" Statusline Config
set statusline+=%*
set cmdheight=2

" Tab Settings
set expandtab           
set tabstop=4           
set shiftwidth=4

" Misc
set showmatch
set number
set formatoptions+=o
set statusline+=%F
set number
set nocompatible
filetype off
set background=dark
colorscheme wal
set clipboard=unnamed

" Show next 3 lines while scrolling.
if !&scrolloff
    set scrolloff=3       
endif

" Show next 5 columns while side-scrolling.
if !&sidescrolloff
    set sidescrolloff=5   
endif

" Not sure what this does
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

" Relative line numbers
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END
