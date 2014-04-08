
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                            "
"                             VIM CONFIGURATION!                             "
"                                                                            "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Plugins
" ├── ack.vim
" ├── ctrlp.vim
" ├── emmet-vim
" ├── foo.js
" ├── goyo.vim
" ├── gundo.vim
" ├── investigate.vim
" ├── kwbd.vim
" ├── mustache.vim
" ├── nerdcommenter
" ├── nerdtree
" ├── sexy_scroller.vim
" ├── syntastic
" ├── tabular
" ├── tagbar
" ├── tlib_vim
" ├── ultisnips
" ├── vim-addon-mw-utils
" ├── vim-airline
" ├── vim-coloresque
" ├── vim-exchange
" ├── vim-fugitive
" ├── vim-javascript
" ├── vim-less
" ├── vim-markdown
" ├── vim-startify
" ├── vim-surround
" ├── vimwiki
" ├── wildfire.vim
" └── ZoomWin

" The best color scheme in the world "{{{
colorscheme zenburn
let g:zenburn_high_Contrast = 1  " more contrast
"}}}
" Turn on syntax highlighting "{{{
syn on
autocmd BufEnter * :syntax sync fromstart " highlight whole file on load
"}}}

" ack.vim            ::: programmer-friendly file contents search using `ack`"{{{
let g:ackprg="ack -H --nocolor --nogroup --column"
nmap <Leader>f :Ack 
"}}}
" ctrlp.vim          ::: open files quickly by typing a few letters of their name"{{{
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_working_path_mode = 'rwa'
let g:ctrlp_regexp = 1 " make regex mode the default
let g:ctrlp_open_multiple_files = '1vjr'
let g:ctrlp_reuse_window = 'startify' " prevent ctrlp from creating a split from the startify window
let g:ctrlp_custom_ignore = {
            \ 'dir': '_site'
            \ }
set wildignore+=*node_modules*,*/build/*,*/tmp/*,*.so,*\\tmp\\*,*.swp,*.zip,*.exe,*/output/*,*/target/*,*\\target\\*
nnoremap <F3> :CtrlPBookmarkDir<cr>
"}}}
" emmet-vim          ::: zencoding plugin for Vim "{{{
" the plugin formerly known as zencoding-vim.
let g:user_emmet_settings = {
\  'indentation' : '    '
\}
let g:user_emmet_mode='i'
"}}}
" goyo.vim           ::: distraction-free writing plugin"{{{
nmap <Leader>df :set list!<CR>:Goyo<CR>
"g:goyo_width "(default: 80)
"g:goyo_margin_top "(default: 4)
"g:goyo_margin_bottom "(default: 4)
"g:goyo_linenr "(default: 0)
" }}}
" gundo.vim          ::: browse your undo history tree"{{{
" no customizations yet
" }}}
" investigate.vim    ::: open documentation in browser"{{{
nnoremap K :call investigate#Investigate()<cr>
" }}}
" kwbd.vim           ::: delete buffer without closing window "{{{
nnoremap <silent> <Leader>bd :<C-u>Kwbd<CR>
"}}}
" mustache.vim       ::: syntax highlighting file for mustache and handlebars "{{{
" no customizations yet
" }}}
" nerdcommenter      ::: easily comment and uncomment code"{{{
" no customizations yet
""}}}
" nerdtree           ::: a file tree browser "{{{
" <leader>n opens NERD Tree
nnoremap <leader>n :NERDTreeFind<CR>
" F2 opens/closes NERD Tree
noremap <F2> :NERDTreeToggle<CR>
"}}}
" sexy_scroller.vim  ::: smooth scrolling within vim, good for pair programming "{{{
" defaults
"let g:SexyScroller_ScrollTime = 10
"let g:SexyScroller_CursorTime = 0
"let g:SexyScroller_MaxTime = 500
"let g:SexyScroller_EasingStyle = 2
"let g:SexyScroller_DetectPendingKeys = 1
" eyecandy
let g:SexyScroller_ScrollTime = 20
let g:SexyScroller_CursorTime = 0
let g:SexyScroller_MaxTime = 1200
let g:SexyScroller_EasingStyle = 3
let g:SexyScroller_DetectPendingKeys = 1
" STOP IT (by default :)
let g:SexyScroller_Enabled = 0
"}}}
" syntastic          ::: automatically run linting utilities on code " {{{
let g:syntastic_mode_map = { 'mode' : 'active',
                           \ 'active_filetypes' : ['javascript'],
                           \ 'passive_filetypes' : ['python'] }

" disable java syntax checking (it couldn't find the pom)
let g:syntastic_java_javac_executable = ''
let g:syntastic_javascript_checkers = ['jshint']
"}}}
" tabular            ::: powerful text alignment tool "{{{
" create a vim-align-like keyboard shortcut for Tabularize
vmap <Leader>t :Tabularize /
""}}}
" tagbar             ::: source code outline plugin"{{{
" easy shortcut
nmap <F8> :TagbarToggle<CR>
let g:tagbar_autofocus = 1 " move cursor to tagbar window when opened
let g:tagbar_sort = 1 " sort tags alphabetically
let g:tagbar_indent = 2
let g:tagbar_autoshowtag = 1 " 
""}}}
" tlib_vim           ::: vimscript utility library, used by other plugins"{{{
" no customizations needed
""}}}
" ultisnips          ::: a powerful code snippet utility"{{{
" no customizations yet
""}}}
" vim-addon-mw-utils ::: vimscript utility library, used by other plugins"{{{
" no customizations needed
""}}}
" vim-coloresque     ::: colorize CSS color names"{{{
" no customizations yet
""}}}
" vim-fugitive       ::: may very well be the best git wrapper of all time"{{{
" fugitive bindings
nnoremap <Leader>ga :Git add %:p<CR><CR>
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gc :Gcommit -v -q<CR>
nnoremap <Leader>gt :Gcommit -v -q %:p<CR>
nnoremap <Leader>gd :Gdiff<CR>
nnoremap <Leader>ge :Gedit<CR>
nnoremap <Leader>gr :Gread<CR>
"nnoremap <Leader>gw :Gwrite<CR><CR>
nnoremap <Leader>gl :silent! Glog<CR>:bot copen<CR>
nnoremap <Leader>gp :Ggrep<Space>
nnoremap <Leader>gm :Gmove<Space>
nnoremap <Leader>gb :Git branch<Space>
nnoremap <Leader>go :Git checkout<Space>
"nnoremap <Leader>gps :Dispatch! git push<CR>
"nnoremap <Leader>gpl :Dispatch! git pull<CR>
" no customizations yet
""}}}
" vim-javascript     ::: vastly improved JavaScript color coding"{{{
" no customizations yet
" also the customizations listed in the README don't seem to work
""}}}
" vim-less           ::: add syntax hilighting, indenting, etc for LESS"{{{
" no customizations yet
""}}}
" vim-markdown       ::: add syntax hilighting and matching rules for Markdown"{{{
let g:vim_markdown_folding_disabled=1 " disable too-aggressive (IMHO) folding
""}}}
" vim-powerline      ::: an improved and more beautiful statusline"{{{

" When you’re pressing Escape to leave insert mode in the terminal, it will by
" default take a second or another keystroke to leave insert mode completely
" and update the statusline. If you find this annoying, you can add the
" following snippet to your vimrc to escape insert mode immediately:
"if ! has('gui_running')
    "set ttimeoutlen=10
    "augroup FastEscape
        "autocmd!
        "au InsertEnter * set timeoutlen=0
        "au InsertLeave * set timeoutlen=1000
    "augroup END
"endif

""}}}
" vim-startify       ::: a start screen for Vim "{{{
let g:startify_bookmarks = [ 
            \ '~/Dropbox/configs/vim/vimrc',
            \ '~/Dropbox/configs/vim/bundle/',
            \ '/home/mwc/Dropbox/configs/vim/bundle/ultisnips/UltiSnips/']
let g:startify_change_to_dir = 1 " automatically change to dir when selecting a file
let g:startify_files_number = 9
" http://www.patorjk.com/software/taag/#p=testall&f=Graffiti&t=Vim%207.4%0A
" Use font 'Larry 3D'
let g:startify_custom_header = [ 
            \ '     __  __                            _______      __ __      ',
            \ '    /\ \/\ \    __                    /\___   \    /\ \\ \     ',
            \ '    \ \ \ \ \  /\_\     ___ ___       \/___/  /    \ \ \\ \    ',
            \ '     \ \ \ \ \ \/\ \   / __` __`\         /  /      \ \ \\ \__ ',
            \ '      \ \ \_/ \ \ \ \ /\ \/\ \/\ \       /  /    __  \ \__  __\',
            \ '       \ `\___/  \ \_\\ \_\ \_\ \_\     /\_/    /\_\  \/_/\_\_/',
            \ '        `\/__/    \/_/ \/_/\/_/\/_/     \//     \/_/     \/_/  ',
            \ '',
            \ '',
            \ ]
let g:startify_custom_footer = [
            \ '                  __    ____    ____    __      ',
            \ '                 /  \  / __ \  / __ \  /  \     ',
            \ '                /\__ \/\ \_\ \/\ \_\ \/\__ \    ',
            \ '                \/_/\ \ \____ \ \____ \/_/\ \   ',
            \ '                   \ \ \/___/\ \/___/\ \ \ \ \  ',
            \ '                    \ \_\   \ \_\   \ \_\ \ \_\ ',
            \ '                     \/_/    \/_/    \/_/  \/_/ ',
            \ ]
" special colors for startify
hi StartifyHeader  ctermfg=108
hi StartifyFooter  ctermfg=108
hi StartifyBracket ctermfg=245
hi StartifyNumber  ctermfg=174
hi StartifyPath    ctermfg=240
hi StartifySlash   ctermfg=236
"hi StartifyFile    ctermfg=236
""}}}
" vimwiki            ::: a personal wiki for Vim "{{{
let g:vimwiki_list = [{'path': '~/Dropbox/notes/', 
                     \ 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_table_mappings = 0
let g:vimwiki_conceallevel = 3
"}}}
" ZoomWin            ::: zoom buffers to fill the entire screen"{{{
" no customizations yet
""}}}
" wildfire.vim       ::: quickly select the closest nested text objects "{{{
" use '*' to mean 'all filetypes'
" html and xml share the same text objects
let g:wildfire_objects = {
    \ "*" : ["i'", 'i"', "i)", "i]", "i}", "ip"],
    \ "html,xml,xhtml" : ["at"],
    \ }

""}}}
" vim-airline        ::: an improved and more beautiful statusline " {{{
" remove separators
let g:airline_left_sep=' '
let g:airline_right_sep=' '
let g:airline_enable_branch=1
let g:airline_enable_syntastic=1
let g:airline_detect_modified=1
let g:airline_detect_paste=1
let g:airline_theme='bubblegum'
let g:airline_powerline_fonts=0
let g:airline_mode_map= {
      \ 'n'  : 'NORMAL ',
      \ 'i'  : 'INSERT ',
      \ 'R'  : 'REPLACE',
      \ 'v'  : 'VISUAL ',
      \ 'V'  : 'V-LINE ',
      \ 'c'  : 'CMD    ',
      \ '' : 'V-BLOCK',
      \ }
let g:airline_branch_prefix = '⎇  '
" display open buffers
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
"}}}


" load bundles "{{{
call pathogen#infect()
call pathogen#helptags() "}}}
" enable mousing in terminal"{{{
set mouse=a
set ttymouse=xterm2
"}}}
" Turn off vi compatibility mode "{{{
set nocompatible "}}}
" don't show current mode (powerline shows it more prettier) "{{{
set noshowmode
"}}}
" Turn on file-type plugins "{{{
filetype plugin indent on "}}}
" Allow CFML nonstandard comments <!--- ---> "{{{
let html_wrong_comments = 1 "}}}
" Terminus is a pretty font "{{{
if has("unix")
  set guifont=Terminus\ 12

  " leaving OSX stuff here for future possibilities :)
  let s:uname = system("uname")
  if s:uname == "Darwin"
    " Do Mac stuff here
  endif

else " do Windows stuff here
  set guifont=ter-c14n:h14
endif "}}}
" Begin searching while typing the query "{{{
set incsearch "}}}
" Ignore case if the search is lower case, restrict if any letters are uppercase "{{{
set ignorecase
set smartcase "}}}
" Maintain 3 lines of context above or below "{{{
set scrolloff=3
" and 5 columns of context to either side
set sidescrolloff=5
"}}}
" make filename completion more like bash "{{{
set wildmode=longest,list
" }}}
" whitespace characters"{{{
" these characers are not shown unless `set list` is run
" because I don't want them on by default.  they're clutter,
" but can be helpful sometimes.
set listchars=trail:·,precedes:«,extends:»,eol:¬,tab:˫\ 
" old tab char: ▸
" old tab char: ↲
" override some zenburn colors to make listchars darker
hi SpecialKey term=bold ctermfg=238 guifg=#9ece9e guibg=#242424
hi Nontext    term=bold ctermfg=238 guifg=#9ece9e guibg=#242424
set list
"}}}
" put backup/directory files in a place that isn't annoying "{{{
if has("unix")
  " create backup and directory dirs if they don't exist
  silent !mkdir ~/.vim/backup    > /dev/null 2>&1
  silent !mkdir ~/.vim/directory > /dev/null 2>&1
  " use them
  set backupdir=~/.vim/backup
  set directory=~/.vim/directory
  let s:uname = system("uname")
  if s:uname == "Darwin"
    " Do Mac stuff here
  endif
else " do Windows stuff here
  " create backup and directory dirs if they don't exist
  " this requires cygwin
  silent !mkdir $HOME/vimfiles/backup    > /dev/null 2>&1
  silent !mkdir $HOME/vimfiles/directory > /dev/null 2>&1
  " use them
  set backupdir=$HOME/vimfiles/backup
  set directory=$HOME/vimfiles/directory
endif "}}}
" TAB settings "{{{
" backspace removes 4 spaces if they are present (just like backspacing a tab)
set expandtab " indent with spaces instead of tabs
set tabstop=4 " use 4 spaces to indent
set softtabstop=4
set shiftwidth=4
" now tell vim that I use two spaces after every sentence.  this allows
" in/around commands to work better with sentences that contain punctuation.
" thanks Steve Losh http://stevelosh.com/blog/2012/10/why-i-two-space/
set cpo+=J
"}}}
" Indentation settings"{{{
set autoindent
set copyindent " copy existing indent structure when creating new lines
set preserveindent " use existing indent structure when editing a line
""}}}
" hide toolbar "{{{
set guioptions-=T
" hide menu bar
set guioptions-=m
"set guioptions+=m
"}}}
" hide right scrollbar "{{{
set guioptions-=r "}}}
" Allow backspacing over autoindents, eol's, etc "{{{
set backspace=indent,eol,start "}}}
" showbreak: display > symbol when lines are wrapped "{{{
set showbreak=\ \ >\ "}}}
" n option will cause the showbreak symbols to appear between line numbers. "{{{
set cpoptions+=n
set guioptions+=n "}}}
" stop autowrapping dammit "{{{
set tw=0 "}}}
" don't wrap long lines "{{{
set nowrap "}}}
" copy/paste settings"{{{
nmap <Leader>p "+
set pastetoggle=<F12> " toggle pasting into vim while preserving text's original format
"}}}
" maintain buffer undo history when switching between buffers in the buffer list "{{{
set hidden "}}}
" highlight the current line "{{{
set cursorline
set cursorcolumn
"}}}
" display relative line numbers (awesome!) "{{{
set number " display line number of current line
set relativenumber " display relative line numbers of other lines
au InsertEnter * :set number norelativenumber " in insert mode, display raw line numbers
au InsertLeave * :set number relativenumber   " in non-insert mode, display relative line numbers
"}}}
" set the default encoding "{{{
set encoding=utf-8 "}}}
" automatically read in file changes when launched from Eclipse "{{{
" as an external tool.  External tool configuration configuration
" options I use are:
" --servername ECLIPSE --remote-silent ${resource_loc}
if v:servername == "ECLIPSE"
    set autoread
endif "}}}
" show current command "{{{
set showcmd "}}}
" faster character drawing (assumes fast terminal connection) "{{{
set ttyfast "}}}
" show current line and column number "{{{
set ruler "}}}
" give the last window a status line always "{{{
set laststatus=2 "}}}
" make moving around split windows easier "{{{
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
"}}}
" use <leader>w to remove all trailing whitespace from a file "{{{
nnoremap <leader>w :%s/\s\+$//<cr>:let @/=''<CR> "}}}
" give in/around support for various other characters besides the standard (, "{{{
" [, {, <, ", ', etc.
" @ "{{{
nnoremap di@ T@d,
nnoremap da@ F@d,
nnoremap ci@ T@c,
nnoremap ca@ F@c,
nnoremap yi@ T@y,
nnoremap ya@ F@y,
nnoremap vi@ T@v,
nnoremap va@ F@v, "}}}
" | "{{{
nnoremap di\| T\|d,
nnoremap da\| F\|d,
nnoremap ci\| T\|c,
nnoremap ca\| F\|c,
nnoremap yi\| T\|y,
nnoremap ya\| F\|y,
nnoremap vi\| T\|v,
nnoremap va\| F\|v, "}}}
" # "{{{
nnoremap di# T#d,
nnoremap da# F#d,
nnoremap ci# T#c,
nnoremap ca# F#c,
nnoremap yi# T#y,
nnoremap ya# F#y,
nnoremap vi# T#v,
nnoremap va# F#v, "}}}
" / "{{{
nnoremap di/ T/d,
nnoremap da/ F/d,
nnoremap ci/ T/c,
nnoremap ca/ F/c,
nnoremap yi/ T/y,
nnoremap ya/ F/y,
nnoremap vi/ T/v,
nnoremap va/ F/v, "}}}
" * "{{{
nnoremap di* T*d,
nnoremap da* F*d,
nnoremap ci* T*c,
nnoremap ca* F*c,
nnoremap yi* T*y,
nnoremap ya* F*y,
nnoremap vi* T*v,
nnoremap va* F*v, "}}}
" . "{{{
nnoremap di. T.d,
nnoremap da. F.d,
nnoremap ci. T.c,
nnoremap ca. F.c,
nnoremap yi. T.y,
nnoremap ya. F.y,
nnoremap vi. T.v,
nnoremap va. F.v, "}}}
" > < "{{{
" this one is for editing between xml tags, like...
" <h1>cursor is here</h1>
" ci> will change between the tags
"
" TODO: make this work over multiple lines with
" search instead of F/T
nnoremap di> T>dt<
nnoremap da> F>dt<
nnoremap ci> T>ct<
nnoremap ca> F>ct<
nnoremap yi> T>yt<
nnoremap ya> F>yt<
nnoremap vi> T>vt<
nnoremap va> F>vt< "}}}"}}}
" I'm not sure what these are for anymore :] "{{{
let g:netrw_liststyle=3
let g:netrw_browse_split=4
let g:netrw_preview=1 "}}}
" make ~ act like an operator "{{{
set tildeop "}}}
" map Ctrl-Tab to zencoding expand "{{{
let g:user_zen_leader_key = '<F11>'
inoremap <Leader><Tab> <F11>,
"}}}
" allow intelligent autocompletion of css selector names "{{{
autocmd FileType css,scss,less set iskeyword=@,48-57,_,-,?,!,192-255 "}}}
" use Ctrl+j and Ctrl+k to navigate autocomplete augrouplists "{{{
inoremap <expr> <C-j> pumvisible() ? "\<C-N>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-P>" : "\<C-k>" "}}}
" {{{ Buffer prev/next commands
nnoremap <S-h> :bprev<CR>
nnoremap <S-l> :bnext<CR>
"}}}
" don't inc/dec octal numbers {{{
set nrformats-=octal
"}}}
" use wildmenu {{{
set wildmenu
"}}}
" {{{ Spellcheck mappings
noremap <Leader>se :setlocal spell spelllang=en_us<CR>
noremap <Leader>sn :setlocal nospell<CR>
"}}}
" use kj to exit insert mode.  faster than escape "{{{
inoremap kj <Esc>
"}}}
" preview a markdown document in the browser "{{{
" requires the rubygems package 'bcat'
nmap <Leader>md :!markdown "%" <bar> bcat 2>/dev/null &<CR><CR>
"}}}
" reduce timeout when exiting insert mode, mostly/only noticeable in"{{{
" powerline/airline
set ttimeout
set ttimeoutlen=50
""}}}
" function for swapping spaces with tabs (SIGH, Ian, SIGH)"{{{
function! IanTabs()
    %s/^\(\s\+\)\?    /\1\t/g
endfunction
""}}}
" disable entering Ex mode"{{{
nnoremap Q <Nop>
""}}}
" Swap default ':', '/' and '?' with cmdline-window equivalent."{{{
" open commands and searches in a window which acts like a regular vim buffer.
" provides the same convenience as regular command/search line, but with
" standard vim text editing commands, and easy history
"nnoremap : q:
"xnoremap : q:
"nnoremap / q/
"xnoremap / q/
"nnoremap ? q?
"xnoremap ? q?
"nnoremap q: :
"xnoremap q: :
"nnoremap q/ /
"xnoremap q/ /
"nnoremap q? ?
"xnoremap q? ?"}}}
" Enhanced command window {{{
set cmdwinheight=3
augroup command_window
    autocmd!
    " have <Ctrl-C> leave cmdline-window
    autocmd CmdwinEnter * nnoremap <buffer> <C-c> :q\|echo ""<cr>
    autocmd CmdwinEnter * inoremap <buffer> <C-c> <esc>:q\|echo ""<cr>
    " start command line window in insert mode and no line numbers
    autocmd CmdwinEnter * startinsert
    autocmd CmdwinEnter * set nonumber
    autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif
augroup END
" }}}
" Save more command history {{{
set history=1000
" }}}
" Select pasted text with `gp` {{{
" tip: `gv` selects the most recently selected text, while `gp` will select
" the most recently pasted text
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'
" }}}
" During a macro, only update the screen when the macro has finished {{{
" vastly speeds up macro processing time when running on many lines
set lazyredraw
" }}}


" vim: set foldmethod=marker:
