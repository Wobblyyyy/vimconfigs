" alright! it's 9:54 on a thursday morning, i just finished my calc test, and
" what else is there to do but comment by nvimrc file? this is my personal
" confiuration, with comments to (hopefully) explain what's going on, so that
" when i (inevitably) forget what half (all) of this stuff does i'll have
" an easier time figuring it out. :)
"
" as another note, this is configured to work with neovim. i was having some
" issues with plain ol' vim, so we switched to neovim, and now we're here.

" enable support for vim plugins
set nocompatible

" enable syntax highlighting
syntax on

" display a bunch of info on the status line (i think)
set viminfo='100,<1000,s100,h

" disable wrapping by default
set nowrap

" auto-replace tabs with 4 spaces, smart indent, and auto indent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set ai
set si

" what does lbr mean? who knows!
set lbr

" 80 char line width
set tw=80

" display guidelines at 80 and 120 chars
set colorcolumn=80,120

" not a clue what these two do but i'm scared to turn them off
set ruler
set magic

" disable visual and audial warnings
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" set default encoding to utf8
set encoding=utf8
set ffs=unix,dos,mac

" change size of status line
set laststatus=2

" use smart case when searching
set smartcase

" show the last command that was executed
set showcmd

" highlight search results while searching
set hlsearch

" incrementally search
set incsearch

" don't redraw the screen while executing macros
set lazyredraw

" show search matches while searching
set showmatch

" add vundle support
set rtp+=~/.vim/bundle/Vundle.vim

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
set cursorline
set cursorcolumn

" uhh...
set hidden

" use GUI colors instead of terminal colors
set termguicolors

" use spellchecking
" set spell spelllang=en_us

" plugin time!
call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'luochen1990/rainbow'
Plug 'rhysd/vim-github-support'
Plug 'powerline/powerline-fonts'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'joshdick/onedark.vim'
Plug 'pangloss/vim-javascript'
Plug 'raimondi/delimitmate'
Plug 'leafgarland/typescript-vim'
Plug 'elzr/vim-json'
Plug 'othree/html5.vim'
Plug 'lervag/vimtex'
Plug 'ollykel/v-vim'
Plug 'sickill/vim-monokai'
Plug 'NoorWachid/VimVLanguage'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'benwainwright/fzf-project'
Plug 'chriskempson/base16-vim'
Plug 'wakatime/vim-wakatime'
Plug 'jesseleite/vim-agriculture'
Plug 'bluz71/vim-moonfly-colors'
Plug 'sbdchd/neoformat'
Plug 'prettier/vim-prettier', {
            \ 'do': 'yarn install --frozen-lockfile --production',
            \ 'branch': 'release/0.x'
            \ }
call plug#end()

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

" use a block cursor while in insert mode
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=0
set guicursor=

" configure NERDTree
let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = '<'
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDSpaceDelims = 1

" try to use project configuration for automatic formatting
" to reformat the current file, use :Neoformat
" note that this doesn't work with gradle prettier configs... very sad
let g:neoformat_try_node_exe = 1

" set up airline status line symbols
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.whitespace = ' '
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '  L '
let g:airline_symbols.colnr = '  C '
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'

" use moonfly color scheme
" alternative color schemes include:
" - onedark
" - koehler (my previous go-to)
let g:airline_theme = 'moonfly'
color moonfly

" disable folding for markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_conceal = 0
let g:vim_markdown_conceal_code_blocks = 0
let g:vim_json_syntax_conceal=0

" set up fzf color scheme to match normal color scheme
let g:fzf_colors = {
            \ 'fg':      ['#87ff00', 'Normal'],
            \ 'bg':      ['bg', 'Normal'],
            \ 'hl':      ['fg', 'Comment'],
            \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
            \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
            \ 'hl+':     ['fg', 'Statement'],
            \ 'info':    ['fg', 'PreProc'],
            \ 'border':  ['fg', 'Ignore'],
            \ 'prompt':  ['fg', 'Conditional'],
            \ 'pointer': ['fg', 'Exception'],
            \ 'marker':  ['fg', 'Keyword'],
            \ 'spinner': ['fg', 'Label'],
            \ 'header':  ['fg', 'Comment'] }

" configure fzf to use rg for finding files
" let me ask you this... who doesn't love ripgrep?
let $FZF_DEFAULT_COMMAND='rg --files'
let $FZF_CTRL_T_COMMAND='$FZF_DEFAULT_COMMAND'
let $FZF_ALT_C_COMMAND='rg --files'

" :W saves using sudo
command! W execute 'w !sudo tee % > /dev/null' <bar>edit!

" ctrl+b reformats the entire file (reindent and remove trailing whitespace)
noremap <C-B> gg=G<C-o><C-o>:%s/\S\zs\s\+$//g<cr>

" space during normal mode clears search results
noremap <silent> <Space> :nohlsearch<Bar>:echo<cr>

" no idea why this is here to be honest
inoremap <C-H> <C-W>

" ctrl+m focuses on NERDTree
" ctrl+n toggles NERDTree
" ctrl+l jumps back to the last active tab (i.e. edit w/o closing NERDTree)
nnoremap <C-M> :NERDTreeFocus<cr>
nnoremap <C-N> :NERDTreeToggle<cr>
nnoremap <C-L> <C-W><C-W>

" the most important mapping of all: jk enters insert mode
inoremap jk <esc>

" a couple other (imo) very important mappings
" - J jumps up half a screen
" - K jumps down half a screen
noremap <S-J> <C-D>
noremap <S-K> <C-U>

" make > and < reselect last selection when changing indentation level
noremap > >gv
noremap < <gv

" make y behave more normally
noremap Y y$

" fzf, rg, and history commands!
" - ctrl+f searches for files in the working directory
" - ctrl+g searches every line in every file in the working directory
" - ctrl+h searches recently opened files, regardless of directory
noremap <silent><C-F> :FZF! --delimiter / --with-nth -3..<cr>
noremap <silent><C-G> :Rg!<cr>
noremap <silent><C-H> :History!<cr>

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
noremap zr :source %<cr>

" gm displays the current syntax group
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
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1] =~# '\s'
endfunction

" ctrl+p executes a shell command
noremap <silent><C-P> :!

" L deletes the rest of the line (cursor pos to end of line)
" H deletes the rest of the line (cursor pos to start of line)
nnoremap <S-L> v$hx"_
nnoremap <S-H> v0x"_

" N repeats the last search going backwards
" M repeats the last search going forwards
noremap <S-M> n

" set up some colors!
" most of the color configuration comes from the moonfly theme
hi Normal guibg=black
hi CursorLine guibg=#23007a
hi CursorColumn guibg=#23007a
hi ColorColumn guibg=#23007a
hi CocHintFloat cterm=NONE guibg=46 guifg=black
hi CocErrorSign cterm=NONE guibg=46 guifg=black
hi CocInfoSign cterm=NONE guibg=46 guifg=black
hi CocErrorSign cterm=NONE guibg=46 guifg=black
hi CocInfoVirtualText cterm=NONE guibg=46 guifg=black
hi CocHintVirtualText cterm=NONE guibg=46 guifg=black
hi CocErrorVirtualText cterm=NONE guibg=46 guifg=black
hi CocHintSign cterm=NONE guibg=46 guifg=black
hi CocErrorHighlight cterm=NONE guibg=46 guifg=black
hi CocHintHighlight cterm=NONE guibg=46 guifg=black
hi CocWarningHighlight cterm=NONE guibg=46 guifg=black
hi Normal guifg=#00ffd9
hi Comment guifg=#6b6b6b
hi LineNr guifg=#00ffd9

" automatically change the cursor line's color based on the current mode
" when in insert mode, only the cursor's current column will be highlighted
" when not in insert mode, the cursor's column and row will be highlighted
augroup line
    autocmd!
    autocmd! InsertLeave * hi CursorLine guibg=#23007a
    autocmd! InsertEnter * hi CursorLine guibg=black
augroup END

" function to get information about the syntax group of whatever symbol
" (or group of symbols) the cursor is over right now - this is pretty much
" just useful for configuring colors
function! SynGroup()
    let l:s=synID(line('.'), col('.'), 1)
    echo synIDattr(l:s, 'name') . ' -> ' . synIDattr(synIDtrans(l:s), 'name')
endfun
