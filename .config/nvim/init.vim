
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
call plug#begin('~/.vim/plugged')

" Code Snippets Engine
Plug 'SirVer/ultisnips'

" Snippets for ultisnips
Plug 'honza/vim-snippets'

" Wal for colorscheme
Plug 'dylanaraps/wal'

" Vim Surround
Plug 'tpope/vim-surround'

" Linter
Plug 'w0rp/ale' 

" Auto pairs
Plug 'jiangmiao/auto-pairs' 

" Multiple Cursors
Plug 'terryma/vim-multiple-cursors'

" Indent guides
Plug 'Yggdroot/indentLine' 

" COC
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Custom start page
Plug 'mhinz/vim-startify'

" Vim Javascript
Plug 'pangloss/vim-javascript'

" Language Packs
Plug 'sheerun/vim-polyglot'

" Status bar
Plug 'vim-airline/vim-airline'

" Tabular auto-align
Plug 'godlygeek/tabular'

" Comfy scroll
Plug 'yuttie/comfortable-motion.vim'

" Add DevIcons
Plug 'ryanoasis/vim-devicons'

call plug#end()


""""""""""""""""""""
" Plugin Settings "
""""""""""""""""""""
" COC Settings

" Comfy Scroll
noremap <silent> <ScrollWheelDown> :call comfortable_motion#flick(40)<CR>
noremap <silent> <ScrollWheelUp>   :call comfortable_motion#flick(-40)<CR>
let g:comfortable_motion_friction = 50.0
let g:comfortable_motion_air_drag = 1.0

" Autocomplete Settings
let g:deoplete#enable_at_startup = 1
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Indent Guide Settings 
let g:indentLine_char = '▏'
filetype plugin indent on    " required
let g:indentLine_fileTypeExclude = ['defx', 'denite', 'startify', 'tagbar', 'vista_kind', 'vista']

" Autopairs Config
let g:AutoPairsFlyMode = 0

" Snippets Config
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsListSnippets="<c-tab>"

" Startify settings
"
function! s:center(lines) abort
  let longest_line   = max(map(copy(a:lines), 'strwidth(v:val)'))
  let centered_lines = map(copy(a:lines),
        \ 'repeat(" ", (&columns / 2) - (longest_line / 2)) . v:val')
  return centered_lines
endfunction

let s:header= [
            \"▄▄        ▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄               ▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄       ▄▄ ",
            \"▐░░▌      ▐░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░▌             ▐░▌▐░░░░░░░░░░░▌▐░░▌     ▐░░▌",
            \"▐░▌░▌     ▐░▌▐░█▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀▀▀▀█░▌ ▐░▌           ▐░▌  ▀▀▀▀█░█▀▀▀▀ ▐░▌░▌   ▐░▐░▌",
            \"▐░▌▐░▌    ▐░▌▐░▌          ▐░▌       ▐░▌  ▐░▌         ▐░▌       ▐░▌     ▐░▌▐░▌ ▐░▌▐░▌",
            \"▐░▌ ▐░▌   ▐░▌▐░█▄▄▄▄▄▄▄▄▄ ▐░▌       ▐░▌   ▐░▌       ▐░▌        ▐░▌     ▐░▌ ▐░▐░▌ ▐░▌",
            \"▐░▌  ▐░▌  ▐░▌▐░░░░░░░░░░░▌▐░▌       ▐░▌    ▐░▌     ▐░▌         ▐░▌     ▐░▌  ▐░▌  ▐░▌",
            \"▐░▌   ▐░▌ ▐░▌▐░█▀▀▀▀▀▀▀▀▀ ▐░▌       ▐░▌     ▐░▌   ▐░▌          ▐░▌     ▐░▌   ▀   ▐░▌",
            \"▐░▌    ▐░▌▐░▌▐░▌          ▐░▌       ▐░▌      ▐░▌ ▐░▌           ▐░▌     ▐░▌       ▐░▌",
            \"▐░▌     ▐░▐░▌▐░█▄▄▄▄▄▄▄▄▄ ▐░█▄▄▄▄▄▄▄█░▌       ▐░▐░▌        ▄▄▄▄█░█▄▄▄▄ ▐░▌       ▐░▌",
            \"▐░▌      ▐░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌        ▐░▌        ▐░░░░░░░░░░░▌▐░▌       ▐░▌",
            \" ▀        ▀▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀          ▀          ▀▀▀▀▀▀▀▀▀▀▀  ▀         ▀ ",
			\]

let s:footer = [
    \"               ...",
    \"             ;::::;",
    \"           ;::::; :;",
    \"         ;:::::'   :;",
    \"        ;:::::;     ;.",
    \"       ,:::::'       ;           OOO\ ",
    \"       ::::::;       ;          OOOOO\ ",
    \"       ;:::::;       ;         OOOOOOOO",
    \"      ,;::::::;     ;'         / OOOOOOO",
    \"    ;:::::::::`. ,,,;.        /  / DOOOOOO",
    \"  .';:::::::::::::::::;,     /  /     DOOOO",
    \" ,::::::;::::::;;;;::::;,   /  /        DOOO",
    \";`::::::`'::::::;;;::::: ,#/  /          DOOO",
    \":`:::::::`;::::::;;::: ;::#  /            DOOO",
    \"::`:::::::`;:::::::: ;::::# /              DOO",
    \"`:`:::::::`;:::::: ;::::::#/               DOO",
    \" :::`:::::::`;; ;:::::::::##                OO",
    \" ::::`:::::::`;::::::::;:::#                OO",
    \" `:::::`::::::::::::;'`:;::#                O",
    \"  `:::::`::::::::;' /  / `:#",
    \"   ::::::`:::::;'  /  /   `#",
  \]

let g:startify_custom_header = s:center(s:header)
let g:startify_custom_footer = s:center(s:footer)
""""""""""""""""
" Vim Settings "
""""""""""""""""

" Enable mouse scroll
set mouse=a

"Statusline Config
set statusline+=%F
set cmdheight=2

" Tab Settings
set expandtab           
set tabstop=4           
set shiftwidth=4

" Misc
syntax on
filetype plugin indent on
set showmatch
set formatoptions+=o
set nocompatible
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

" Share the yank buffer
set clipboard=unnamedplus


" Relative line numbers
set number
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

"alphsubs ---------------------- {{{
        execute "digraphs ks " . 0x2096 
        execute "digraphs as " . 0x2090
        execute "digraphs es " . 0x2091
        execute "digraphs hs " . 0x2095
        execute "digraphs is " . 0x1D62
        execute "digraphs ks " . 0x2096
        execute "digraphs ls " . 0x2097
        execute "digraphs ms " . 0x2098
        execute "digraphs ns " . 0x2099
        execute "digraphs os " . 0x2092
        execute "digraphs ps " . 0x209A
        execute "digraphs rs " . 0x1D63
        execute "digraphs ss " . 0x209B
        execute "digraphs ts " . 0x209C
        execute "digraphs us " . 0x1D64
        execute "digraphs vs " . 0x1D65
        execute "digraphs xs " . 0x2093
"}}}

" Enable spellchecking for certain files
augroup markdownSpell
    autocmd!
    autocmd FileType markdown setlocal spell
    autocmd BufRead,BufNewFile *.md setlocal spell
augroup END

augroup textSpell
    autocmd!
    autocmd FileType text setlocal spell
    autocmd BufRead,BufNewFile *.txt setlocal spell
augroup END


" COC TEST SETTINGS
set hidden

set updatetime=300

let g:coc_snippet_next = '<TAB>'
let g:coc_snippet_prev = '<S-TAB>'
let g:coc_status_error_sign = '•'
let g:coc_status_warning_sign = '•'
let g:coc_global_extensions =['coc-html','coc-css','coc-snippets','coc-prettier','coc-eslint','coc-emmet','coc-tsserver','coc-pairs','coc-json','coc-python','coc-imselect','coc-highlight','coc-git','coc-emoji','coc-lists','coc-post','coc-stylelint','coc-yaml','coc-template','coc-tabnine']

augroup MyAutoCmd
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

"Use tab for trigger completion with characters ahead and navigate
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
"inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


