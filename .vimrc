" Vundle stuff {
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()

    Bundle 'gmarik/vundle'
    Bundle 'tpope/vim-fugitive'
    Bundle 'scrooloose/nerdtree'
    Bundle 'majutsushi/tagbar'
    Bundle 'bling/vim-airline'
    Bundle 'chriskempson/tomorrow-theme'
    Bundle 'sandeepcr529/Buffet.vim'
" }

colorscheme Tomorrow-Night
" Basics {
    set nocompatible " explicitly get out of vi-compatible mode
    set noexrc " don't use local version of .(g)vimrc, .exrc
    set background=dark " we plan to use a dark background
    set cpoptions=aABceFsmq
    "             |||||||||
    "             ||||||||+-- When joining lines, leave the cursor
    "             |||||||      between joined lines
    "             |||||||+-- When a new match is created (showmatch)
    "             ||||||      pause for .5
    "             ||||||+-- Set buffer options when entering the
    "             |||||      buffer
    "             |||||+-- :write command updates current file name
    "             ||||+-- Automatically add <CR> to the last line
    "             |||      when using :@r
    "             |||+-- Searching continues at the end of the match
    "             ||      at the cursor position
    "             ||+-- A backslash has no special meaning in mappings
    "             |+-- :write updates alternative file name
    "             +-- :read updates alternative file name
    syntax on " syntax highlighting on
    filetype plugin on
    filetype indent on
" }

" General {
    filetype plugin indent on " load filetype plugins/indent settings
    set autochdir " always switch to the current file directory
    set backspace=indent,eol,start " make backspace a more flexible
    set nobackup " make NO backup files
    set clipboard+=unnamed " share windows clipboard
    set directory=/tmp " directory to place swap files in
    set fileformats=unix,dos,mac " support all three, in this order
    set iskeyword+=_,$,@,%,# " none of these are word dividers
    set noerrorbells " don't make noise
    set whichwrap=b,s,h,l,<,>,~,[,] " everything wraps
    "             | | | | | | | | |
    "             | | | | | | | | +-- "]" Insert and Replace
    "             | | | | | | | +-- "[" Insert and Replace
    "             | | | | | | +-- "~" Normal
    "             | | | | | +-- <Right> Normal and Visual
    "             | | | | +-- <Left> Normal and Visual
    "             | | | +-- "l" Normal and Visual (not recommended)
    "             | | +-- "h" Normal and Visual (not recommended)
    "             | +-- <Space> Normal and Visual
    "             +-- <BS> Normal and Visual
    set wildmenu " turn on command line completion wild style
    " ignore these list file extensions
    set wildignore=*.dll,*.o,*.obj,*.bak,*.exe,*.pyc,
                    \*.jpg,*.gif,*.png
    set wildmode=list:longest " turn on wild mode huge list
    set undolevels=9999

    set autoread " autoread when file is changed from the outside
    set hlsearch "Highlight search things
    set incsearch "Make search act like search in modern browsers
    set magic "Set magic on, for regular expressions

    " Map leader key {
        let mapleader = ","
        let g:mapleader = ","
    " }
" }

" Vim UI {
    "set cursorcolumn " highlight the current column
    set incsearch " BUT do highlight as you type you
                   " search phrase
    set laststatus=2 " always show the status line
    set lazyredraw " do not redraw while running macros
    set linespace=0 " don't insert any extra pixel lines
                     " betweens rows
    set list " we do what to show tabs, to ensure we get them
              " out of my files
    set listchars=tab:>-,trail:- " show tabs and trailing
    set matchtime=5 " how many tenths of a second to blink
                     " matching brackets for
    set nohlsearch " do not highlight searched for phrases
    set nostartofline " leave my cursor where it was
    set novisualbell " don't blink
    set number " turn on line numbers
    set numberwidth=5 " We are good up to 99999 lines
    set report=0 " tell us when anything is changed via :...
    set ruler " Always show current positions along the bottom
    set scrolloff=10 " Keep 10 lines (top/bottom) for scope
    set shortmess=aOstT " shortens messages to avoid
                         " 'press a key' prompt
    set showcmd " show the command being typed
    set showmatch " show matching brackets
    set sidescrolloff=10 " Keep 5 lines at the size
    set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]%{fugitive#statusline()}
    "              | | | | |  |   |      |  |     |    |
    "              | | | | |  |   |      |  |     |    + current
    "              | | | | |  |   |      |  |     |       column
    "              | | | | |  |   |      |  |     +-- current line
    "              | | | | |  |   |      |  +-- current % into file
    "              | | | | |  |   |      +-- current syntax in
    "              | | | | |  |   |          square brackets
    "              | | | | |  |   +-- current fileformat
    "              | | | | |  +-- number of lines
    "              | | | | +-- preview flag in square brackets
    "              | | | +-- help flag in square brackets
    "              | | +-- readonly flag in square brackets
    "              | +-- rodified flag in square brackets
    "              +-- full path to file in the buffer
" }

" Text Formatting/Layout {
    set completeopt= " don't use a pop up menu for completions
    set expandtab " no real tabs please!
    set formatoptions=rq " Automatically insert comment leader on return,
                          " and let gq format comments
    set ignorecase " case insensitive by default
    set infercase " case inferred by default
    set nowrap " do not wrap line
    set shiftround " when at 3 spaces, and I hit > ... go to 4, not 5
    set smartcase " if there are caps, go case-sensitive
    set shiftwidth=4 " auto-indent amount when using cindent,
                      " >>, << and stuff like that
    set softtabstop=4 " when hitting tab or backspace, how many spaces
                       "should a tab be (see expandtab)
    set tabstop=8 " real tabs should be 8, and they will show with
                   " set list on
    set smarttab
" }

" Folding {
    set foldenable " Turn on folding
    set foldmarker={,} " Fold C style code (only use this as default
                        " if you use a high foldlevel)
    set foldmethod=marker " Fold on the marker
    set foldlevel=100 " Don't autofold anything (but I can still
                      " fold manually)
    set foldopen=block,hor,mark,percent,quickfix,tag " what movements
                                                      " open folds
" }

" Plugin Settings {
    let b:match_ignorecase = 1 " case is stupid
    let perl_extended_vars=1 " highlight advanced perl vars
                              " inside strings

    " TagList Settings {
        let Tlist_Auto_Open=0 " let the tag list open automagically
        let Tlist_Compact_Format = 1 " show small menu
        let Tlist_Ctags_Cmd = 'ctags' " location of ctags
        let Tlist_Enable_Fold_Column = 0 " do show folding tree
        let Tlist_Exist_OnlyWindow = 1 " if you are the last, kill
                                        " yourself
        let Tlist_File_Fold_Auto_Close = 0 " fold closed other trees
        let Tlist_Sort_Type = "name" " order by
        let Tlist_Use_Right_Window = 1 " split to the right side
                                        " of the screen
        let Tlist_WinWidth = 40 " 40 cols wide, so i can (almost always)
                                 " read my functions
        " Language Specifics {
            " don't show variables in freaking php
            let tlist_php_settings = 'php;c:class;d:constant;f:function'
        " }
    " }
" }

" Mappings {
    " ROT13 - fun
    map <F12> ggVGg?

    " space / shift-space scroll in normal mode
    noremap <S-space> <C-b>
    noremap <space> <C-f>

    " Make Arrow Keys Useful Again {
        "left
        map <C-P> <ESC>:bp<RETURN>
        "right
        map <C-N> <ESC>:bn<RETURN>
        "up
        map <S-F> <ESC>:NERDTreeToggle<RETURN>
        "down
        map <C-F> <ESC>:Tlist<RETURN>
    " }

    " Tab usability {
        map <C-<> <ESC>:tabprevious<RETURN>
        map <C->> <ESC>:tabnext<RETURN>
    " }

    " Multiple line indent and de-indent {
        vmap <Tab> >gv
        vmap <S-Tab> <gv
    " }

    " Changing shiftwidth {
        map <leader>t2 :setlocal shiftwidth=2<cr>
        map <leader>t4 :setlocal shiftwidth=4<cr>
        map <leader>t8 :setlocal shiftwidth=8<cr>
    " }

    " Bash-like shortcuts {
        cnoremap <C-A> <Home>
        cnoremap <C-E> <End>
        cnoremap <C-K> <C-U>
        cnoremap <C-P> <Up>
        cnoremap <C-N> <Down>
    " }

    " Parenthesis/bracket expanding {
        vnoremap $1 <esc>`>a)<esc>`<i(<esc>
        vnoremap $2 <esc>`>a]<esc>`<i[<esc>
        vnoremap $3 <esc>`>a}<esc>`<i{<esc>
        vnoremap $$ <esc>`>a"<esc>`<i"<esc>
        vnoremap $q <esc>`>a'<esc>`<i'<esc>
        vnoremap $e <esc>`>a"<esc>`<i"<esc>
    " }

    " Map auto complete of (, ", ', [ {
"        inoremap $1 ()<esc>i
"        inoremap $2 []<esc>i
"        inoremap $3 {}<esc>i
"        inoremap $4 {<esc>o}<esc>O
"        inoremap $q ''<esc>i
"        inoremap $e ""<esc>i
    " }

    " Move a line of text using ALT+[jk] or Comamnd+[jk] on mac {
        nmap <M-j> mz:m+<cr>`z
        nmap <M-k> mz:m-2<cr>`z
        vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
        vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z
    " }

    " Moving between windows {
        map <C-j> <C-W>j
        map <C-k> <C-W>k
        map <C-h> <C-W>h
        map <C-l> <C-W>l
    " }

    nmap <leader>w :w<cr> " Fast saving
    map <C-D> yyp " <C-d> duplicates line
    map <leader>cd :cd %:p:h<cr> " change to current buffer directory

" }
" Delete trailing white space {
    func! DeleteTrailingWS()
      exe "normal mz"
      %s/\s\+$//e
      exe "normal `z"
    endfunc

" Autocommands {
    " Ruby {
    " ruby standard 2 spaces, always
    au BufRead,BufNewFile *.rb,*.rhtml set shiftwidth=2
    au BufRead,BufNewFile *.rb,*.rhtml set softtabstop=2
    " }
    " Python {
    " Add cursor highliting in python files
    au BufNewFile,BufRead *.py set cursorcolumn
    " }
    " Puppet {
    au BufNewFile,BufRead *.pp set filetype=puppet
    au BufNewFile,BufRead *.pp set shiftwidth=2
    au BufNewFile,BufRead *.pp set softtabstop=2
    au BufNewFile *.pp so ~/.vim/puppet/header.txt
    autocmd BufWritePost *.pp !puppet-lint --no-selector_inside_resource-check --no-80chars-check --no-class_inherits_from_params_class-check <afile>
    autocmd BufWritePre  *.pp call DeleteTrailingWS()
    " }
    " Jinja Jinja2 {
    au BufNewFile,BufRead *.j2 set filetype=jinja
    " }
" }

" Arrow Key hack {
autocmd VimEnter * map <C-Left>  <ESC>:bp<CR>
autocmd VimEnter * map <C-Right> <ESC>:bn<CR>
autocmd VimEnter * map <C-Up> <ESC>:Tlist<CR>
autocmd VimEnter * map <C-Down> <ESC>:NERDTreeToggle<CR>
" }

" GUI Settings {
if has("gui_running")
    " Basics {
        colorscheme darkblue" my color scheme (only works in GUI)
        set guifont=Liberation\ Mono\ 8 " My favorite font
        set guioptions=ce
        "              ||
        "              |+-- use simple dialogs rather than pop-ups
        "              +  use GUI tabs, not console style tabs
        set guioptions=-T
        set guioptions=-M
        set guitablabel=%t
        set mousehide " hide the mouse cursor when typing
    " }
endif
" }

" Cope section {
    map <leader>cc :botright cope<cr>
    map <leader>n :cn<cr>
    map <leader>p :cp<cr>
" }

" Nerdtree section {
    nmap <leader>n :NERDTreeToggle<CR>
    let NERDTreeHighlightCursorline=1
    let NERDTreeIgnore = ['tmp', '.yardoc', 'pkg']
    au VimEnter * NERDTree
" }

" tagbar section {
let g:tagbar_type_puppet = {
    \ 'ctagstype': 'puppet',
    \ 'kinds': [
        \'c:class',
        \'s:site',
        \'n:node',
        \'d:definition'
      \]
    \}
" }
"
let g:airline_powerline_fonts = 1
set term=xterm-256color
set encoding=utf-8
set termencoding=utf-8
