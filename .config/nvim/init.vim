
" ___      ___ ___  _____ ______           ________  ________  ________   ________ ___  ________
"|\  \    /  /|\  \|\   _ \  _   \        |\   ____\|\   __  \|\   ___  \|\  _____\\  \|\   ____\
"\ \  \  /  / | \  \ \  \\\__\ \  \       \ \  \___|\ \  \|\  \ \  \\ \  \ \  \__/\ \  \ \  \___|
" \ \  \/  / / \ \  \ \  \\|__| \  \       \ \  \    \ \  \\\  \ \  \\ \  \ \   __\\ \  \ \  \  ___
"  \ \    / /   \ \  \ \  \    \ \  \       \ \  \____\ \  \\\  \ \  \\ \  \ \  \_| \ \  \ \  \|\  \
"   \ \__/ /     \ \__\ \__\    \ \__\       \ \_______\ \_______\ \__\\ \__\ \__\   \ \__\ \_______\
"    \|__|/       \|__|\|__|     \|__|        \|_______|\|_______|\|__| \|__|\|__|    \|__|\|_______|


"#####################################################################################################
"                           ____     __                     _                 
"                          / __ \   / /  __  __   ____ _   (_)   ____    _____
"                         / /_/ /  / /  / / / /  / __ `/  / /   / __ \  / ___/
"                        / ____/  / /  / /_/ /  / /_/ /  / /   / / / / (__  ) 
"                       /_/      /_/   \__,_/   \__, /  /_/   /_/ /_/ /____/  
"                                              /____/
"######################################################################################################

call plug#begin('~/.vim/plugged')

" Git wrapper
Plug 'tpope/vim-fugitive'

" Code Snippets Engine
" Plug 'SirVer/ultisnips'

" Snippets for ultisnips
Plug 'honza/vim-snippets'

" Wal for colorscheme
Plug 'dylanaraps/wal'

" Vim Surround
Plug 'tpope/vim-surround'

" Linter
"Plug 'dense-analysis/ale'

" Auto pairs
Plug 'jiangmiao/auto-pairs'

" Multiple Cursors
Plug 'terryma/vim-multiple-cursors'

" Indent guides
Plug 'Yggdroot/indentLine'

" COC
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Smart completion (to work with CoC)
" Plug 'zxqfl/tabnine-vim'

" Custom start page
Plug 'mhinz/vim-startify'

" Vim Javascript
Plug 'pangloss/vim-javascript'

" Language Packs
Plug 'sheerun/vim-polyglot'

" Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Tabular auto-align
Plug 'godlygeek/tabular'

" Comfy scroll
Plug 'yuttie/comfortable-motion.vim'

" Add DevIcons
Plug 'ryanoasis/vim-devicons'

" Tagbar
Plug 'majutsushi/tagbar'

" NERDTree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Emoji support
Plug 'junegunn/vim-emoji'

" goyo distraction free mode
Plug 'junegunn/goyo.vim'

" LaTeX support
Plug 'lervag/vimtex'

" Wal theme
Plug 'dylanaraps/wal.vim'

Plug 'deviantfero/wpgtk.vim'

call plug#end()

set completefunc=emoji#complete


"#####################################################################################################
"                    _____         __    __     _                          
"                   / ___/  ___   / /_  / /_   (_)   ____    ____ _   _____
"                   \__ \  / _ \ / __/ / __/  / /   / __ \  / __ `/  / ___/
"                  ___/ / /  __// /_  / /_   / /   / / / / / /_/ /  (__  ) 
"                 /____/  \___/ \__/  \__/  /_/   /_/ /_/  \__, /  /____/  
"                                                         /____/           
"
"#####################################################################################################

"***********************************************************************************
"   __  ___         _               ____       __   __    _                   
"  /  |/  / ___ _  (_)  ___        / __/ ___  / /_ / /_  (_)  ___   ___ _  ___
" / /|_/ / / _ `/ / /  / _ \      _\ \  / -_)/ __// __/ / /  / _ \ / _ `/ (_-<
"/_/  /_/  \_,_/ /_/  /_//_/     /___/  \__/ \__/ \__/ /_/  /_//_/ \_, / /___/
"                                                                 /___/
"
"***********************************************************************************

" Set leader to space bar
let mapleader = " "

" Colorsheme
colorscheme wpgtk

" Limit line length for text files
autocmd FileType text,markdown,tex setlocal textwidth=80

" Don't automatically collapse markdown
set conceallevel=0

" Don't dispay mode in command line (airilne already shows it)
set noshowmode

" Automatically re-read file if a change was detected outside of vim
set autoread

" no case sensative search unless uppercase is present
set ignorecase
set smartcase

" Enable mouse scroll
set mouse=a

"Statusline Config
set statusline+=%F
set cmdheight=1

" Tab Settings
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smarttab
set autoindent
set smartindent
set shiftround

" Misc
syntax on
filetype plugin indent on
set showmatch
set formatoptions+=o
set nocompatible
colorscheme wal
set clipboard=unnamed
set nowrap

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

"*****************************************************************************************
"   ___    __                _               ____       __   __    _                   
"  / _ \  / / __ __  ___ _  (_)  ___        / __/ ___  / /_ / /_  (_)  ___   ___ _  ___
" / ___/ / / / // / / _ `/ / /  / _ \      _\ \  / -_)/ __// __/ / /  / _ \ / _ `/ (_-<
"/_/    /_/  \_,_/  \_, / /_/  /_//_/     /___/  \__/ \__/ \__/ /_/  /_//_/ \_, / /___/
"                  /___/                                                   /___/       
"
"*****************************************************************************************


"""""""""""
" VimTex  "
"""""""""""
let g:latex_view_general_viewer = "zathura"
let g:vimtex_view_method = "zathura"
let g:tex_flavor = "latex"
let g:vimtex_quickfix_open_on_warning = 0
let g:vimtex_quickfix_mode = 2
let g:vimtex_compiler_method = "latexmk"
let g:vimtex_compiler_progname = 'nvr'
let g:vimtex_compiler_latexmk = {
    \ 'background' : 1,
    \ 'build_dir' : '',
    \ 'callback' : 1,
    \ 'continuous' : 1,
    \ 'executable' : 'latexmk',
    \ 'options' : [
    \   '-verbose',
    \   '-file-line-error',
    \   '-synctex=1',
    \   '-interaction=nonstopmode',
    \ ],
    \}

"""""""""""
" Goyo    "
"""""""""""
nmap <F6> :Goyo<CR>
let g:goyo_width=100

"""""""""""
" Tagbar  "
"""""""""""
nmap <F8> :TagbarToggle<CR>
let g:tagbar_width=35
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds' : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin' : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
    \ }



""""""""""""
"NerdTree  "
""""""""""""
map <F7> :NERDTreeToggle<CR>
let nerdtreequitonopen = 0
let NERDTreeShowHidden=1
let nerdchristmastree=1
let g:NERDTreeMinimalUI = 1
let g:nerdtreewinsize = 25
let g:NERDTreeDirArrowExpandable = '▷'
let g:NERDTreeDirArrowCollapsible = '▼'
let NERDTreeAutoCenter=1
let g:NERDTreeIndicatorMapCustom = {
        \ "modified"  : "✹",
        \ "staged"    : "✚",
        \ "untracked" : "✭",
        \ "renamed"   : "➜",
        \ "unmerged"  : "═",
        \ "deleted"   : "✖",
        \ "dirty"     : "✗",
        \ "clean"     : "✔︎",
        \ 'ignored'   : '☒',
        \ "unknown"   : "?"
        \ }

""""""""""""
"Airline   "
""""""""""""
let g:airline_theme='wpgtk'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols_branch = ''
let g:airline_powerline_fonts = 1
let g:airline_symbols.crypt = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'
let airline#extensions#coc#stl_format_err = '%E{[%e(#%fe)]}'
let airline#extensions#coc#stl_format_warn = '%W{[%w(#%fw)]}'
let g:airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'


""""""""""""""
"Devicons   "
"""""""""""""
let g:webdevicons_enable = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ''
let g:DevIconsDefaultFolderOpenSymbol = ''
let g:airline#extensions#unicode#enabled = 1

"""""""""""""""""
"Comfy-Scroll   "
"""""""""""""""""
noremap <silent> <ScrollWheelDown> :call comfortable_motion#flick(40)<CR>
noremap <silent> <ScrollWheelUp>   :call comfortable_motion#flick(-40)<CR>
let g:comfortable_motion_friction = 50.0
let g:comfortable_motion_air_drag = 1.0

"""""""""""""""""
"Indent Guides  "
"""""""""""""""""
let g:indentLine_char = '▏'
filetype plugin indent on    " required
let g:indentLine_fileTypeExclude = ['defx', 'markdown', 'denite', 'startify', 'tagbar', 'vista_kind', 'vista']

"""""""""""""
"Autopairs  "
"""""""""""""
let g:AutoPairsFlyMode = 0

"""""""""""""
"Ultinsips  "
"""""""""""""
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsListSnippets="<c-tab>"

""""""""""""
"Startify  "
""""""""""""
function! s:center(lines) abort
  let longest_line   = max(map(copy(a:lines), 'strwidth(v:val)'))
  let centered_lines = map(copy(a:lines),
        \ 'repeat(" ", (&columns / 2) - (longest_line / 2)) . v:val')
  return centered_lines
endfunction

let s:header= [
      \"  ▄▀▀▄ ▀▄  ▄▀▀█▄▄▄▄  ▄▀▀▀▀▄   ▄▀▀▄ ▄▀▀▄  ▄▀▀█▀▄    ▄▀▀▄ ▄▀▄ ",
      \"  █  █ █ █ ▐  ▄▀   ▐ █      █ █   █    █ █   █  █  █  █ ▀  █ ",
      \"  ▐  █  ▀█   █▄▄▄▄▄  █      █ ▐  █    █  ▐   █  ▐  ▐  █    █ ",
      \"    █   █    █    ▌  ▀▄    ▄▀    █   ▄▀      █       █    █  ",
      \"  ▄▀   █    ▄▀▄▄▄▄     ▀▀▀▀       ▀▄▀     ▄▀▀▀▀▀▄  ▄▀   ▄▀   ",
      \"  █    ▐    █    ▐                       █       █ █    █    ",
      \"  ▐         ▐                            ▐       ▐ ▐    ▐    ",
      \"                         ...",
      \"                       ;::::;",
      \"                     ;::::; :;",
      \"                   ;:::::'   :;",
      \"                  ;:::::;     ;.",
      \"                 ,:::::'       ;           OOO\ ",
      \"                 ::::::;       ;          OOOOO\ ",
      \"                 ;:::::;       ;         OOOOOOOO",
      \"                ,;::::::;     ;'         / OOOOOOO",
      \"              ;:::::::::`. ,,,;.        /  / DOOOOOO",
      \"            .';:::::::::::::::::;,     /  /     DOOOO",
      \"           ,::::::;::::::;;;;::::;,   /  /        DOOO",
      \"          ;`::::::`'::::::;;;::::: ,#/  /          DOOO",
      \"          :`:::::::`;::::::;;::: ;::#  /            DOOO",
      \"          ::`:::::::`;:::::::: ;::::# /              DOO",
      \"          `:`:::::::`;:::::: ;::::::#/               DOO",
      \"           :::`:::::::`;; ;:::::::::##                OO",
      \"           ::::`:::::::`;::::::::;:::#                OO",
      \"           `:::::`::::::::::::;'`:;::#                O",
      \"            `:::::`::::::::;' /  / `:#",
      \"             ::::::`:::::;'  /  /   `#",
      \]

"let s:footer = [
"    \"               ...",
"    \"             ;::::;",
"    \"           ;::::; :;",
"    \"         ;:::::'   :;",
"    \"        ;:::::;     ;.",
"    \"       ,:::::'       ;           OOO\ ",
"    \"       ::::::;       ;          OOOOO\ ",
"    \"       ;:::::;       ;         OOOOOOOO",
"    \"      ,;::::::;     ;'         / OOOOOOO",
"    \"    ;:::::::::`. ,,,;.        /  / DOOOOOO",
"    \"  .';:::::::::::::::::;,     /  /     DOOOO",
"    \" ,::::::;::::::;;;;::::;,   /  /        DOOO",
"    \";`::::::`'::::::;;;::::: ,#/  /          DOOO",
"    \":`:::::::`;::::::;;::: ;::#  /            DOOO",
"    \"::`:::::::`;:::::::: ;::::# /              DOO",
"    \"`:`:::::::`;:::::: ;::::::#/               DOO",
"    \" :::`:::::::`;; ;:::::::::##                OO",
"    \" ::::`:::::::`;::::::::;:::#                OO",
"    \" `:::::`::::::::::::;'`:;::#                O",
"    \"  `:::::`::::::::;' /  / `:#",
"    \"   ::::::`:::::;'  /  /   `#",
"  \]
let g:startify_change_to_dir = 1
let g:startify_custom_header = s:center(s:header)
"let g:startify_custom_footer = s:center(s:footer)

"""""""
"COC  "
"""""""
" coc.nvim color changes
"hi! link CocErrorSign WarningMsg
"hi! link CocWarningSign Number
"hi! link CocInfoSign Type
" Make background transparent for many things
"hi! Normal ctermbg=NONE guibg=NONE
"hi! NonText ctermbg=NONE guibg=NONE
"hi! LineNr ctermfg=NONE guibg=NONE
"hi! SignColumn ctermfg=NONE guibg=NONE
"hi! StatusLine guifg=#16252b guibg=#6699CC
"hi! StatusLineNC guifg=#16252b guibg=#16252b
hi! Pmenu ctermbg=black
" KEY REMAPS ""
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
set hidden
set updatetime=300
let g:ycm_server_python_interpreter = '/usr/bin/python3'
let g:coc_snippet_next = '<TAB>'
let g:coc_snippet_prev = '<S-TAB>'
let g:coc_status_error_sign = ''
let g:coc_status_warning_sign = ''
let g:coc_global_extensions =['coc-html', 'coc-css','coc-snippets','coc-prettier','coc-eslint','coc-emmet','coc-tsserver','coc-pairs','coc-json','coc-python','coc-imselect','coc-highlight','coc-git','coc-emoji','coc-lists','coc-post','coc-stylelint','coc-yaml','coc-template','coc-tabnine']
" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

augroup MyAutoCmd
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" map <tab> to trigger completion and navigate to the next item
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


"""""""
"ALE  "
"""""""
let g:ale_sign_column_always = 1
let g:ale_lint_on_insert_leave = 1
let g:ale_fix_on_save = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_open_list = 1
let g:ale_list_window_size = 5
let g:ale_sign_error = ''
let g:ale_sign_warning = ''
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier'],
\   'javascript.jsx': ['prettier'],
\   'typescript': ['prettier'],
\   'typescript.tsx': ['prettier'],
\   'python': ['yapf'],
\   'json': ['prettier'],
\   'html': ['prettier'],
\   'css': ['prettier', 'stylelint'],
\   'scss': ['prettier', 'stylelint'],
\}
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'javascript.jsx': ['eslint'],
\   'typescript': ['eslint'],
\   'typescript.tsx': ['eslint'],
\   'python': ['flake8'],
\   'json': ['jsonlint'],
\   'html': ['htmlhint'],
\   'css': ['stylelint'],
\   'scss': ['stylelint'],
\}

