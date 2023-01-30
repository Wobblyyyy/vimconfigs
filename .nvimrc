" alright! it's 9:54 on a thursday morning, i just finished my calc test, and
" what else is there to do but comment by nvimrc file? this is my personal
" confiuration, with comments to (hopefully) explain what's going on, so that
" when i (inevitably) forget what half (all) of this stuff does i'll have
" an easier time figuring it out. :)
"
" as another note, this is configured to work with neovim. i was having some
" issues with plain ol' vim, so we switched to neovim, and now we're here.
"
" YOU HAVE TO BE JOKING LIKE WHAT. i just spent like half an hour adding more
" dumb ass comments to this AND THEY WEREN'T SAVED? HOW IS THAT EVEN POSSIBLE I
" KNOW FOR A FACT I :wq'd BC I LITERALLY SAID I WOULD... ugh anyways. premise
" was. it's now 1/30/2023 (maybe a year after that calc test? i don't know i
" really couldn't tell you but probably around there (or something like that))
" and i went through and added the stupidest fucking comments because NOBODY IS
" GOING TO READ THIS!!! :) i drop my number later on tho so like if u think i'm
" cute you should for sure hit me up (please i'm desparate for attention and
" will probably fall in love with you (not a joke (is it a joke? (idk))))

" enable support for vim plugins
"
" (obviously like tf)
set nocompatible

" enable syntax highlighting
"
" YEAH. in case you don't know what 'syntax on' means... am i dumb?
syntax on

" display a bunch of info on the status line (i think)
set viminfo='100,<1000,s100,h

" disable wrapping by default
"
" oh my god i couldn't tell from the words 'no wrap' in conjunction that this
" disables wrapping! that's NUTS! absolutely BANANAS! BONKERS, even!
set nowrap

" auto-replace tabs with 4 spaces, smart indent, and auto indent
"
" this is so helpful (if you've never used vim a day in your entire fucking
" life) like bffr rn did i really need to comment on this...
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set ai
set si

" what does lbr mean? who knows!
"
" i still don't know, and i don't have the energy to find out I JUST SAID I WAS
" GONNA GO SLEEP AND THEN I GOT SIDETRACKED BECAUSE SOME OF THE COMMENTS GOT
" DELETED FUCK OKAY whatever i need to STOP OMG
set lbr

" 80 char line width
"
" oh also i found out i have OCD. which would explain a lot, like why i use 80
" char lines despite being 19 and living in 2023. and also why i can't code
" unless everything is formatted perfectly. I JUST SAID I WAS GONNA GO TO SLEEP
" BUT THEN I GOT SIDETRACAKED AGAIN okay you know what? maybe i'll add more
" comments tmr.
set tw=80

" display guidelines at 80 and 120 chars
"
" like can you tell i'm depraved of attention
set colorcolumn=80,120

" not a clue what these two do but i'm scared to turn them off
set ruler
set magic

" disable visual and audial warnings
"
" WHO. THE. FUCK. USES. ERROR OR VISUAL BELLS. like you're cRAZY if you do
" that's just so distracting but you do you WOW I JUST GOT A REALLY STRONG URGE
" TO KILL MYSELF I NEED TO SMOKE MORE
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" set default encoding to utf8
"
" giiiiiiiiiiiiiiiiiiiiiiiiiiiiiiirl i need to GO TO BED
set encoding=utf8
set ffs=unix,dos,mac

" change size of status line
"
" okay i'm going to bed. why is this 2 tho shouldn't it be 1? wouldn't that make
" more sense? i'm not gonna rmbr to change this tmr but at some point in time
" (probably like 6 months from now) i'll remember to change it!
set laststatus=2

" use smart case when searching
"
" OKAY GOODNIGHT <3
set smartcase

" show the last command that was executed
"
" wait hold up. just in case anyone is reading this. all of the comments before
" this point were added AFTER all of the additional comments after this point.
" also, in case you haven't caught on by now, new comments are denoted by a
" blank comment line
set showcmd

" highlight search results while searching
"
" now i'm ACTUALLY going to bed. good. fucking. night.
set hlsearch

" incrementally search
"
" god DAMMIT I NEED TO UPLOAD THIS TO GITHUB fuck okay well i'm gonna upload it
" then go to bed. so goodnight. for like the 4th time idk. like i'm literally
" just not gonna be able to sleep tonight
" hahahahahahahhahahahahahahahahahahahhAHHAHAHAHAH I'M FUCKING HOMICIDAL
" :)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
" i clearly need more medication i don't think i'm on enough yet
" okay byeeeeeeeeeeeeeeeeeeee (seductive coquette kiss)
set incsearch

" don't redraw the screen while executing macros
set lazyredraw

" show search matches while searching
set showmatch

" add vundle support
set rtp+=~/.vim/bundle/Vundle.vim

" add dev neomoonfly support
" set rtp+=~/IdeaProjects/neomoonfly/

" add dev vimcalc support
" set rtp+=~/IdeaProjects/vimcalc/

" add coc.nvim
set rtp+=~/IdeaProjects/coc.nvim/

" set rtp+=~/IdeaProjects/neoline/

" add support for 256 colors
set t_Co=256

" set relative line numbers
set number
set relativenumber

" update autocompletion results every 200 milliseconds
set updatetime=200

" set the height of the command bar to 1 line
" was previously 2 lines, but i don't like that anymore
set cmdheight=1

" don't conceal anything
" i have no idea why you would ever want to use concealing tbh
set conceallevel=0

" color the cursor's line and column
" set cursorline
" set cursorcolumn

" uhh...
set hidden

" use GUI colors instead of terminal colors
set termguicolors

" automatically return to the last cursor position when re-opening a file
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" set filetype to v when opening files ending with .v
au BufRead,BufNewFile *.v set filetype=v

" add autoindentation
filetype plugin indent on
autocmd StdinReadPre * let s:std_in=1

" exit if NERDTree would be the last remaining window
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" set the leader key to comma
let mapleader = ','

" :W saves using sudo
command! W execute 'w !sudo tee % > /dev/null' <bar>edit!

" ctrl+b reformats the entire file (reindent and remove trailing whitespace)
noremap <C-B> gg=G<C-o><C-o>:%s/\S\zs\s\+$//g<cr>

" space during normal mode clears search results
noremap <silent> <Space> :nohlsearch<Bar>:echo<cr>

" ctrl+p executes a shell command
noremap <silent><C-P> :!

" ctrl+m focuses on NERDTree
" ctrl+n toggles NERDTree
" ctrl+l jumps back to the last active tab (i.e. edit w/o closing NERDTree)
nnoremap <C-M> :NERDTreeFocus<cr>
nnoremap <C-N> :NERDTreeToggle<cr>
nnoremap <C-L> <C-W><C-W>

" fzf, rg, and history commands!
" - ctrl+f searches for files in the working directory
" - ctrl+g searches every line in every file in the working directory
" - ctrl+h searches recently opened files, regardless of directory
noremap <silent><C-F> :FZF! --delimiter / --with-nth -3..<cr>
noremap <silent><C-G> :Rg!<cr>
noremap <silent><C-H> :History!<cr>

" function to get information about the syntax group of whatever symbol
" (or group of symbols) the cursor is over right now - this is pretty much
" just useful for configuring colors
function! SynGroup()
    let l:s=synID(line('.'), col('.'), 1)
    echo synIDattr(l:s, 'name') . ' -> ' . synIDattr(synIDtrans(l:s), 'name')
endfun

" ctrl+/ toggles the comment status of the current line
" also sets a marker (z) and jumps to the marker (useful when commenting
" a lot of lines in visual mode)
map <C-_> mz<leader>c<space>`z

" use coc for some cool navigation
" - gd = get definition
" - gy = get type def
" - gi = get implementation
" - gr = get references
nmap gd <Plug>(coc-definition)
nmap gy <Plug>(coc-type-definition)
nmap gi <Plug>(coc-implementation)
nmap gr <Plug>(coc-references)

" zr reloads the .nvimrc file
"
" you have to be joking. i have been exiting and re-entering vim for the past
" hour because i knew i had a mapping to reload .nvimrc but i was too lazy to
" look through the file and find it. bro i gotta go to bed it's 12:52 AM and i
" have therapy at 11... and like i'm not gonna be able to sleep right after
" finishing this obviously but am i gonna stay up to comment the whole file?
" probably! you'll get to find out later i guess
noremap zr :source %<cr>

" zs toggles spellchecking
noremap zs :setlocal spell! spelllang=en_us<cr>

" zm toggles GitGutter
noremap zm :GitGutterToggle<cr>

" gm displays the current syntax group
"
" why did i disable this what ok i'm re-enabling it for funsies
noremap gm :call SynGroup()<cr>

" if the autocompletion window is visible, and tab is pressed, automatically
" navigate to the first suggestion.
inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" pressing enter will select the currently highlighted suggestion
inoremap <silent><expr> <cr>
    \ pumvisible() ? coc#_select_confirm()
    \ : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" ctrl+n in insert mode will refresh autocompletion suggestions
inoremap <silent><expr> <C-@> coc#refresh()

" used for mapping ctrl+backspace
"
" YAS i literally can't live without this shit
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1] =~# '\s'
endfunction

" plugin time!
"
" i think i don't have enough plugins yet, and i should definitely add a couple
" more.
call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'luochen1990/rainbow'
Plug 'rhysd/vim-github-support'
Plug 'powerline/powerline-fonts'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'enricobacis/vim-airline-clock'
" Plug 'joshdick/onedark.vim'
Plug 'pangloss/vim-javascript'
Plug 'raimondi/delimitmate'
Plug 'leafgarland/typescript-vim'
Plug 'elzr/vim-json'
Plug 'othree/html5.vim'
" Plug 'lervag/vimtex'
Plug 'ollykel/v-vim'
Plug 'sickill/vim-monokai'
Plug 'NoorWachid/VimVLanguage'
Plug 'mhinz/vim-startify'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'junegunn/fzf', {
    \ 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {
    \ 'branch': 'master',
    \ 'do': 'yarn install --frozen-lockfile' }
Plug 'benwainwright/fzf-project'
" Plug 'chriskempson/base16-vim'
Plug 'wakatime/vim-wakatime'
Plug 'jesseleite/vim-agriculture'
Plug 'bluz71/vim-moonfly-colors'
Plug 'Wobblyyyy/neomoonfly'
Plug 'Wobblyyyy/vimcalc'
" Plug 'Wobblyyyy/neocoloresque'
" Plug 'sbdchd/neoformat'
Plug 'prettier/vim-prettier', {
    \ 'do': 'yarn install --frozen-lockfile --production',
    \ 'branch': 'release/0.x' }
call plug#end()

" configure NERDTree
"
" okay you know what i'm getting kinda tired (i'm not at all tired my attention
" span just ran out) so i think imma call it a night
let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = '<'
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDSpaceDelims = 1

let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ''
let g:WebDevIconsNerdTreeBeforeGlyphPadding = ''
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:WebDevIconsUnicodeGlyphDoubleWidth = 0
let g:WebDevIconsOS = 'Darwin'

let g:airline#extensions#clock#auto = 1
let g:airline#extensions#clock#format = '%H:%M:%S'

" try to use project configuration for automatic formatting
" to reformat the current file, use :Neoformat
" note that this doesn't work with gradle prettier configs... very sad
"
" SIKE i'm still here
let g:neoformat_try_node_exe = 1

" set up airline status line symbols
"
" okay you know what now i'm actually going to bed...
" love you, cutie ;) xoxo
" THERE'S LITERALLY NO WAY ANY HUMAN BEING IS READING THIS RIGHT LOL
" i mean idc but like...
" hey you know what if you reading this send me a text
"
" 973
" 647
" 9536
"
" okay anyways now i'm ACTuALLY gonna :wq and pop like 30 fucking benadryl
" because this insomnia is a BITCH
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
" let g:airline_symbols.linenr = '¶'
" let g:airline_symbols.paste = 'Þ'
" let g:airline_symbols.whitespace = ' '
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '  L '
let g:airline_symbols.colnr = '  C '
let g:airline_powerline_fonts = 1
" let g:Powerline_symbols = 'fancy'

" disable folding for markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_conceal = 0
let g:vim_markdown_conceal_code_blocks = 0
let g:vim_json_syntax_conceal=0

let g:nmfCursorLineColorInsert = '#66353a'
let g:nmfCursorColumnColorInsert = '#66353a'

function GenerateSplash (text)
    let prompt = 'figlet -w 90 ' . a:text
    let g:startify_custom_header = startify#pad(split(system(prompt), "\n"))
endfunction

let g:seed = system("strings -n 1 < /dev/urandom | grep -o '[[:digit:]]'  | head -c1")

" look. programming quotes are cool and all, but you know what's even cooler?
" drawing an ascii dick on your screen. stop me.
if g:seed == 0
    call GenerateSplash("hey cutie...")
elseif g:seed == 1
    call GenerateSplash("wow ur soo good at coding that is soo attractive")
elseif g:seed == 2
    call GenerateSplash("FUCK YOU. bitch!")
elseif g:seed == 3
    call GenerateSplash("every day is a great day to be a gael!")
elseif g:seed == 5
    call GenerateSplash("go. to. fucking. sleep.")
elseif g:seed == 6
    call GenerateSplash("yass girl get it ig")
elseif g:seed == 7
    call GenerateSplash("ur so sexy omg")
elseif g:seed == 8
    call GenerateSplash("so productive of you! slayyyyyy")
elseif g:seed == 9
    call GenerateSplash("8========D")
endif
    call GenerateSplash("wow ur soo good at coding that is soo attractive")

" set up fzf color scheme to match normal color scheme
" let g:fzf_colors = {
    " \ 'fg':      ['#87ff00', 'Normal'],
    " \ 'bg':      ['bg', 'Normal'],
    " \ 'hl':      ['fg', 'Comment'],
    " \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
    " \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
    " \ 'hl+':     ['fg', 'Statement'],
    " \ 'info':    ['fg', 'PreProc'],
    " \ 'border':  ['fg', 'Ignore'],
    " \ 'prompt':  ['fg', 'Conditional'],
    " \ 'pointer': ['fg', 'Exception'],
    " \ 'marker':  ['fg', 'Keyword'],
    " \ 'spinner': ['fg', 'Label'],
    " \ 'header':  ['fg', 'Comment'] }

" configure fzf to use rg for finding files
" let me ask you this... who doesn't love ripgrep?
let $FZF_DEFAULT_COMMAND='rg --files'
let $FZF_CTRL_T_COMMAND='$FZF_DEFAULT_COMMAND'
let $FZF_ALT_C_COMMAND='rg --files'

" no idea why this is here to be honest
inoremap <C-H> <C-W>

" the most important mapping of all: jk enters insert mode
inoremap jk <esc>

" a couple other (imo) very important mappings
" - J jumps down half a screen
" - K jumps up half a screen
noremap <S-J> <C-D>
noremap <S-K> <C-U>

" make > and < reselect last selection when changing indentation level
noremap > >gv
noremap < <gv

" make y behave more normally
noremap Y y$

" L deletes the rest of the line (cursor pos to end of line)
" H deletes the rest of the line (cursor pos to start of line)
nnoremap <S-L> v$hx"_
nnoremap <S-H> v0x"_

" N repeats the last search going backwards
" M repeats the last search going forwards
noremap <S-M> n

" imap o Ojkvua

" use neomoonfly color scheme
" alternative color schemes include:
" - onedark
" - koehler (my previous go-to)

let g:airline_theme = 'neomoonfly'
color neomoonfly

let $NVIM_TUI_ENABLE_CURSOR_SHAPE=0
set guicursor= 

" set up some colors!
" most of the color configuration comes from the moonfly theme
" hi Normal guibg=black
hi ColorColumn guibg=#15734d
" hi CocHintFloat cterm=NONE guibg=46 guifg=black
" hi CocErrorSign cterm=NONE guibg=46 guifg=black
" hi CocInfoSign cterm=NONE guibg=46 guifg=black
" hi CocErrorSign cterm=NONE guibg=46 guifg=black
" hi CocInfoVirtualText cterm=NONE guibg=46 guifg=black
" hi CocHintVirtualText cterm=NONE guibg=46 guifg=black
" hi CocErrorVirtualText cterm=NONE guibg=46 guifg=black
" hi CocHintSign cterm=NONE guibg=46 guifg=black
" hi CocErrorHighlight cterm=NONE guibg=46 guifg=black
" hi CocHintHighlight cterm=NONE guibg=46 guifg=black
" hi CocWarningHighlight cterm=NONE guibg=46 guifg=black
hi Normal guifg=#7de8aa
hi Comment guifg=#6b6b6b
" hi LineNr guifg=#00ffd9
"
