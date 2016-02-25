" pathogen
" It is essential that these lines are called before enabling filetype detection,
" so I would recommend putting them at the top of your vimrc file.
"call pathogen#runtime_append_all_bundles()
"call pathogen#helptags()

let g:pathogen_disabled = []
"call add(g:pathogen_disabled, 'syntastic')
call pathogen#infect()

set nocompatible
syntax on
filetype on
filetype plugin on
filetype indent on

set history=1000
set showmatch
set matchtime=0
set shortmess=atI
set ruler
set showcmd

set sidescroll=1
set sidescrolloff=3

" Set xterm title
set title

" Search options
set hlsearch
set incsearch
set ignorecase
set smartcase

set visualbell
set noerrorbells
set printoptions=paper:letter

" Keep more lines of context
set scrolloff=3

" Make backspace delete lots of things
set backspace=indent,eol,start

" Auto-backup files and .swp files don't go to pwd
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" Allow switching edited buffers without saving
set hidden

" Look for the file in the current directory, then south until you reach home.
set tags=tags;~/

" Copies all yanks/deletes to the system clipboard
set clipboard=unnamed

" Who needs .gvimrc?
if has('gui_running')
  set encoding=utf-8
  "set guifont=Monospace\ Bold\ 9
  "set guifont=Bitstream\ Vera\ Sans\ Mono\ 9
  "set guifont=Envy\ Code\ R\ 13
  "set gfn=Envy\ Code\ R\ 11
  set gfn=Envy\ Code\ R:h13

  " Command-Shift-F for Ack
  "macmenu Window.Toggle\ Full\ Screen\ Mode key=<nop>
  map <D-F> :Ack<space>

  " Turn off toolbar and menu
  set guioptions-=T
  set guioptions-=m
  "colorscheme inkpot
  "colorscheme krTheme
  "color nuvola
  "colorscheme desert
  "colorscheme tir_black
  "colorscheme underwater-mod
  "colorscheme lucius
  "colorscheme molokai
  "colorscheme liquidcarbon
  "colorscheme pf_earth
  "colorscheme jellybeans
  "colorscheme chadbeans
  "colorscheme up
  set background=dark
  colorscheme getafe
  "colorscheme aldmeris
  "colorscheme obsidian
  "colorscheme tir_black
  "colorscheme macvim
  "let solarized_bold=0
  "colorscheme solarized
else
  set background=dark
  set t_Co=256
  "colorscheme grb4
  "colorscheme desert
  "colorscheme macvim
  "colorscheme ir_black
  colorscheme tir_black   "this is THE colorscheme i use
  "colorscheme getafe
  "colorscheme native
  "colorscheme demoncag
  "set background=dark
  "let g:solarized_italic = 1
  "let g:solarized_termcolors=256
  "colorscheme solarized
  "colorscheme molokai
  "colorscheme obsidian
  "colorscheme lucius
end
set tabstop=2 shiftwidth=2 softtabstop=2
" Change <Leader>
" let mapleader = ","

" Quick timeouts on key combinations.
set timeoutlen=300

" "Very magic" regexes in searches
"nnoremap / /\v
"nnoremap ? ?\v

" Vi-style editing in the command-line
"nnoremap : q:a
"nnoremap / q/a
"nnoremap ? q?a

" Lusty
"let g:LustyJugglerShowKeys = 2
"let g:LustyExplorerSuppressRubyWarning = 1
"let g:LustyExplorerAlwaysShowDotFiles = 1
"nmap <silent> <Leader>f :LustyFilesystemExplorer<CR>
"nmap <silent> <Leader>b :LustyBufferExplorer<CR>
"nmap <silent> <Leader>r :LustyFilesystemExplorerFromHere<CR>
"nmap <silent> <Leader>g :LustyJuggler<CR>
"nmap <silent> <Leader>j :so ~/.vim/plugin/lusty-explorer.vim<CR>
"nmap <silent> <TAB> :JugglePrevious<CR>

" Window management
"nmap <silent> <Leader>xo :wincmd j<CR>

" Catch trailing whitespace
"set listchars=tab:>-,trail:·,eol:$
set listchars=tab:▸\ ,eol:¬ " characters used to show hidden characters"
nmap <silent> <leader>sl :set nolist!<CR>

" Fix command typos (stolen from Adam Katz)
"nmap ; :

" ` is more useful than ' but less accessible.
"nnoremap ' `
"nnoremap ` '

" Buffer management
"nmap <C-h> :bp<CR>
"nmap <C-l> :bn<CR>
"nmap <TAB> :b#<CR>
"nmap <C-q> :bd<CR>
"nmap <C-d> :bw<CR>
"vmap <C-d> :bw<CR>

" Toggle highlighting
" nmap <silent> <C-n> :silent :set nohls!<CR>:silent :set nohls?<CR>
"nmap <silent> <C-n> :silent :nohlsearch<CR>
noremap <silent> <C-h> :silent :nohlsearch<CR>

" Scroll faster
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>
vnoremap <C-e> 3<C-e>
vnoremap <C-y> 3<C-y>

" % matches on if/else, html tags, etc.
runtime macros/matchit.vim

" Bash-like filename completion
set wildmenu
"set wildmode=list:longest
set wildignore=*.o,*.fasl,*.obj,*.bak,*.exe

" delete trailing whitespace
autocmd BufRead * silent! %s/[\r \t]\+$//
" return to last edit when opening a file
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
autocmd BufRead *.qcf set filetype=lisp
autocmd BufRead qpx.inc set filetype=make
autocmd BufRead letter* set filetype=mail
autocmd Filetype mail set fo -=l autoindent spell
autocmd BufRead *.txt set tabstop=4 softtabstop=4 expandtab filetype=txt textwidth=70
autocmd BufRead *.ru set filetype=ruby
autocmd BufRead *.rabl set filetype=ruby
autocmd BufRead Guardfile set filetype=ruby
autocmd BufRead .pryrc set filetype=ruby
autocmd BufRead *.cap set filetype=ruby

"Chef stuff
autocmd BufRead Cheffile set filetype=ruby
autocmd FileType ruby,eruby set filetype=ruby.eruby.chef

" add jbuilder syntax highlighting
autocmd BufNewFile,BufRead *.json.jbuilder set filetype=ruby
"autocmd BufRead *.txt nmap <D-r> :DBExecSQLUnderCursor<cr>
"autocmd BufRead *.markdown nmap <D-r> :Mm<cr>
autocmd BufRead *.conf set filetype=sh
autocmd BufRead Procfile.* set filetype=sh
"autocmd BufRead,BufNewFile *.scss set ft=css
"autocmd BufRead *.txt color molokai
"autocmd BufRead *.txt color obsidian
"autocmd BufRead *.txt color nuvola
"autocmd BufRead *.txt color mayansmoke
"autocmd BufRead *.txt color bclear
"autocmd Filetype txt color taqua

" ITA indenting style
"autocmd Filetype c,cpp,h set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
" JSH indenting style
"autocmd Filetype c,cpp,h set tabstop=8 softtabstop=4 shiftwidth=4 noexpandtab
" Wimba indenting style, sort-of
"autocmd Filetype c,cpp,h set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
" Viewglob
"autocmd Filetype c,cpp,h,sh set cindent autoindent
autocmd Bufread c,cpp,h,sh,make set cindent autoindent ts=4 shiftwidth=4 softtabstop=4 expandtab
autocmd Filetype c,cpp,h,sh set cindent autoindent ts=4 shiftwidth=4 softtabstop=4 expandtab

autocmd Filetype sh set ts=4 shiftwidth=2 expandtab
"autocmd Filetype lisp,ruby,xml,html set ts=8 shiftwidth=2 expandtab
"autocmd FileType php set tabstop=2 shiftwidth=2 softtabstop=2 autoindent
"autocmd FileType php color tir_black
autocmd FileType ruby set tabstop=2 shiftwidth=2 softtabstop=2 autoindent
autocmd Filetype python set ts=4 shiftwidth=4
"autocmd Filetype xml,xslt,diff,ruby color tir_black
"autocmd Filetype xml,xslt,diff,ruby set expandtab
autocmd BufReadPre viper,.viper set filetype=lisp

autocmd Bufread notes set cindent autoindent ts=4 shiftwidth=4 softtabstop=4 expandtab
autocmd FileType notes set tabstop=4 shiftwidth=4 softtabstop=4 autoindent


" a.vim
"nmap <silent> <Leader>h :A<CR>

"----------------------------------------------chad stuff
" Change <Leader>
let mapleader = ","         "let's change the map leader from \ to ,
set cursorline
set nobackup     " do not keep a backup file
set nu           " line numbers on by default
set laststatus=2 " always show the status line
"let g:rvmprompt_tokens ="v g"
"let g:rvmprompt_tokens ="g"
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
"set statusline+=%{rvmprompt#statusline()}

" syntastic
set statusline+=%{SyntasticStatuslineFlag()}
let g:syntastic_c_include_dirs = [ '/opt/ctreeACE/osx.v10.6.64bit/include', 'include', '/Users/chad/.rvm/rubies/ruby-1.9.3-p194/include/ruby-1.9.1' ]

set expandtab    " expand tabs to spaces
set nowrap       " no wrap by default
set autoindent   " i like autoindent
set textwidth=100
set colorcolumn=81
"let &colorcolumn=join(range(80,300),",")

"turn line numbers on/off
"map <leader>s :set nu!<CR>

"wrap lines
map ;w :set wrap! <CR>
nmap <silent> ;s :set spell!<CR>
set spelllang=en_us

" show/save/close sessions
"nnoremap <silent> <C-P> :SessionList<CR>
"nnoremap <leader>ss :SaveSession<CR>
"nnoremap <leader>sc :CloseSession<CR>
"cnorea ss SaveSession
"cnorea so OpenSession
"cnorea sc CloseSession
"cnorea <leader>cd :cd %:p:h<CR>

"nnoremap <leader>p :YRShow<CR>
"inoremap <C-Y> <esc>:YRShow<CR>

" ruby ruby_focused_unit_test_vim
"map <silent> <LocalLeader>rb :RunAllRubyTests<CR>
"map <silent> <LocalLeader>rc :RunRubyFocusedContext<CR>
"map <silent> <LocalLeader>rf :RunRubyFocusedUnitTest<CR>

" ruby specific mappings
"autocmd Filetype ruby map <D-r> :!rubygtk % <CR>
"autocmd Filetype ruby map <leader>vv :!ruby -c % <CR>

" cpp specific mappings
autocmd Filetype cpp nmap <C-A>a :A<CR>
let g:C_LineEndCommColDefault = 65
let g:C_MapLeader  = ';'
let g:C_Ctrl_j     = 'off'
let g:C_FormatDate = '%Y-%m-%d'

" command to run single file
nmap <D-c> :SingleCompile<cr>
nmap <D-r> :SingleCompileRun<cr>
nmap <leader>cc :SingleCompile<cr>
nmap <leader>cr :SingleCompileRun<cr>

" single compile multi language support
let g:SingleCompile_templates={}
let g:SingleCompile_templates['c']={}
let g:SingleCompile_templates['c']['command']='cc'
let g:SingleCompile_templates['c']['flags']='-lhiredis -o %<'
let g:SingleCompile_templates['c']['run']='./%<'
let g:SingleCompile_templates['cpp']={}
let g:SingleCompile_templates['cpp']['command']='g++'
"let g:SingleCompile_templates['cpp']['flags']='-Wall -g -L/Volumes/devl/FairCom/osx.v10.6.64bit/lib/ctree.cpp/singlethreaded/dynamic -I/Volumes/devl/FairCom/osx.v10.6.64bit/include -I/Volumes/devl/FairCom/osx.v10.6.64bit/include/sdk/ctree.cpp/singlethreaded/dynamic -o %<'
let g:SingleCompile_templates['cpp']['flags']='-Wall -g -o %<'
let g:SingleCompile_templates['cpp']['run']='./%<'
let g:SingleCompile_templates['sh']={}
let g:SingleCompile_templates['sh']['command']='sh'
let g:SingleCompile_templates['sh']['flags']=''
let g:SingleCompile_templates['sh']['run']=''
"let g:SingleCompile_templates['ruby']={}
"let g:SingleCompile_templates['ruby']['command']='rubygtk'
"let g:SingleCompile_templates['ruby']['flags']=''
"let g:SingleCompile_templates['ruby']['run']=''

" ---- TagList settings ----
"let g:ctags_statusline=1
" map taglist open
nnoremap <silent> <C-L> :TlistOpen<CR>
let Tlist_Close_On_Select = 1
let Tlist_WinWidth        = 50
"let Tlist_Ctags_Cmd       = '/opt/local/bin/ctags'
let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
"let tlist_ruby_settings = 'ruby;c:classes;f:methods;m:modules;F:singleton methods;r:rule'
"NOTE:  the tlist_ruby_settings doesn't work, so go into the taglist.vim file
"and add r:rule to the ruby setting manually
"
"===example:
"let s:tlist_def_ruby_settings = 'ruby;c:class;f:method;F:function;r:rule;t:task;o:on;p:pass_through' .
                              "\ 'm:singleton method'
"let s:tlist_def_ruby_settings = 'ruby;c:class;f:method;F:function;r:rule;t:task;o:on;p:pass_tvimrc
                              "\ 'm:singleton method'
let tlist_css_settings = 'CSS;c:classes;s:selectors;i:identities'
let tlist_scss_settings = 'CSS;c:classes;s:selectors;i:identities'
let tlist_notes_settings='Notes;s:sections'
"

" sessions.vim default dir
let session_directory = '~/.vim/sessions'

"show all occurances of word under cursor
map <F4> [I:let nr = input("Match: ")<Bar>exe "normal " . nr ."[\t"<CR>

" NERD
" open NERD on load, and switch to other buffer
"function! LoadNERDTree()
  ":NERDTree
  "execute "normal \<C-w>l"
"endf
"au VimEnter * :call LoadNERDTree()
noremap <C-N><C-N> :NERDTreeToggle<CR>
noremap <C-N><C-F> :NERDTreeFind<CR>
noremap <C-N><C-M> :NERDTreeClose<CR>
let NERDTreeShowHidden = 1
"noremap <leader>nm :NERDTreeMirror<CR>

" conque term
let ConqueTerm_FastMode = 0
let ConqueTerm_TERM = 'xterm'
"au FileType conque_term inoremap <C-L> ztI<CR>

"let g:ConqueTerm_TERM = 'vt100'
nmap <D-x> :ConqueTermVSplit zsh<CR>

" rails stuff
map <leader>rm :Rmodel<CR>
map <leader>rc :Rcontroller<CR>
map <leader>rv :Rview<CR>
map <leader>ru :Runittest<CR>
map <leader>rf :Rfunctionaltest<CR>
cnorea rmm Rmodel
cnorea rvm RVmodel
cnorea rcc Rcontroller
cnorea rvc RVcontroller
cnorea rrv Rview
cnorea rvv RVview
cnorea ruu Runittest
cnorea rvu RVunittest
cnorea rt Rtree

" Fuf stuff
map <leader>t :FufFileWithCurrentBufferDir<CR>
"map <leader>ff :FufBookmarkFile<CR>
"map <leader>fr :FufRenewCache<CR>
"map <leader>j :FufBuffer<cr>
"map <leader>t :FuzzyFinderFile<CR>
map <leader>ff :FuzzyFinderBookmark<CR>
map <leader>fr :FuzzyFinderRenewCache<CR>
"map <leader>j :FuzzyFinderBuffer<cr>
"let g:fuf_buffer_keyDelete
"let g:fuf_modesDisable = [  ]

map <leader>mr :MRU<CR>
let MRU_Use_Current_Window = 1

" CtrlP mappings (control p)
"map <leader>t :CtrlP<CR>
map <leader>j :CtrlPBuffer<cr>
map <leader>mr :CtrlPMRU<CR>
let g:ctrlp_custom_ignore = 'node_modules\|DS_STORE\|git'
"let g:ctrlp_show_hidden = 1
"let g:ctrlp_match_window = 'bottom,order:ttb'
"let g:ctrlp_switch_buffer = 0
"let g:ctrlp_working_path_mode = 0
"let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

"mini buf expl mapping
"map <D-e> :MiniBufExplorer<cr>
map <D-e> :BufExplorer<cr>
map <D-d> :BufExplorerVerticalSplit<cr>
" don't split pathname
let g:bufExplorerSplitOutPathName=1
" show relative paths
let g:bufExplorerShowRelativePath=1

" bufferaurus
map <leader>gg :Bsgrep <CR>

" strip trailing whitespace
map <leader>sw :%s/[\r \t]\+$//<CR>:w<CR>

"map <leader>a :'<,'>Align = + - \* /<CR>

" Make it way easier to switch windows (<leader>w)
"nnoremap <C-J> <C-w>h
"nnoremap <C-K> <C-w>l

"cd to the directory of the current file
map <leader>cd :cd %:p:h<CR>

"useful mappings
"nnoremap <CR> o<esc>
"nnoremap <leader>b o<esc>
nnoremap <D-Enter> o<esc>
nnoremap <leader>a o<esc>
let acp_behaviorSnipmateLength=1


"useful insert mode mappings
inoremap <C-E> <esc>$a
inoremap <C-f> <esc>la
inoremap <C-d> <esc>lxi
inoremap <C-k> <esc>lC
imap <C-l> <Space>=><Space>

" map cmd-# to tabs
" open tabs with command-<tab number>
map <D-1> :tabn 1<CR>
map <D-2> :tabn 2<CR>
map <D-3> :tabn 3<CR>
map <D-4> :tabn 4<CR>
map <D-5> :tabn 5<CR>
map <D-6> :tabn 6<CR>
map <D-7> :tabn 7<CR>
map <D-8> :tabn 8<CR>
map <D-9> :tabn 9<CR>

" mapping to select text just pasted
"nnoremap <expr> gp '`[' . visualmode() . '`]'
"nnoremap gp `[v`]

" vcs/svn commands
cnorea vc VCSCommit
cnorea vu VCSUpdate
cnorea vl VCSLog

" fugitive commands
cnorea gc Gcommit
cnorea pull Git pull origin
cnorea push Git push origin

" simplenote commands
cnorea sl Simplenote -l

" use smart paste "
"nmap <silent> ,p :SmartPaste</silent></esc></cr><cr>

"Make sure paste mode is on before pasting
function! SmartPaste()
    set paste
    normal! p`[=`]
    set nopaste
endfunction
command! -bar            SmartPaste   :call SmartPaste()

"mapping to stick the visually selected area into a search
vnoremap * y/\V<C-R>=substitute(escape(@@,"/\\"),"\n","\\\\n","ge")<CR><CR>
vnoremap # y?\V<C-R>=substitute(escape(@@,"?\\"),"\n","\\\\n","ge")<CR><CR>

" load passwords and secret stuff
source ~/.vimpassrc
"let g:dbext_default_type   = 'PGSQL'

" Ack searching
map <leader>ac :Ack!<space>
map <C-T> :Ack! TODO <CR>
map <D-F> :Ack!<space>
map <D-D> :Bsgrep<space>
map <leader>bg :Bsgrep<space>
map <leader>gg :Bsgrep<space>
map <leader>bo :Bsopen<CR>
map <D-L> :Bstoc<CR>
let g:ackhighlight=1
let b:csv_arrange_leftalign = 1

" xolox/vim-notes
:let g:notes_directories = ['~/Dropbox/plainfingers/notes']
:let g:notes_suffix = '.notes'
:let g:notes_tab_indents = 0



"---------------------------------------------end chad stuff

"
"
"
" Indent XML readably
function! DoPrettyXML()
	1,$!xmllint --format --recover -
endfunction
command! PrettyXML call DoPrettyXML()
