colorscheme darkblue 
set mouse=
set mousefocus
set mousehide
set novisualbell
set nocompatible
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set wildmenu
set wildmode=longest:full,full
let mapleader = ","
let maplocalleader = "\\"
"vi .vimrc in split
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
"source .vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>
"make jk into <esc>
inoremap jk <esc>
"bad - vnoremap jk <esc>
"surround viw with quotes
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel 
"Disable entering ex mode with Q
nnoremap Q <nop>
"Easier moving to start/end of line
nnoremap H ^
nnoremap L $

autocmd FileType make setlocal noexpandtab
set nocp
set noic "Use case sensitive searches
"set ww=<,>,[,]

call pathogen#infect()

"map <C-b> :BufExplorer<CR>
autocmd! BufNewFile,BufRead *.pde setlocal ft=arduino
autocmd! BufNewFile,BufRead *.ino setlocal ft=arduino
"let g:vim_arduino_map_keys = 1 

"Folding
set foldcolumn=5
"set foldmethod=indent
set foldmethod=syntax
""au BufWinLeave * mkview
""au BufWinEnter * silent loadview
""Prevent E32 error when opening vim wo a file:
"au BufWritePost,BufLeave,WinLeave ?* mkview
"au BufReadPre ?* silent loadview

"The first line sets a mapping so that pressing F2 in normal mode will invert the 'paste' option, and will then show the value of that option. The second line allows you to press F2 when in insert mode, to toggle 'paste' on and off. The third line enables displaying whether 'paste' is turned on in insert mode. 
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

"noremap hhh !xterm -e vim help &

syntax on
set history=100
"set ignorecase
" ignore case if pattern is all lower case
set smartcase 
set incsearch
set showmatch
"set guioptions-=T
set vb t_vb=
set ruler
set incsearch
set background=dark
set number

"set comments=sl:/*,mb:,elx:*/

" omnicppcomplete
"   http://www.vim.org/scripts/script.php?script_id=1520
"   cp -r after/ autoload/ doc/ ~/.vim
set nocp
filetype plugin on

:function! ReverseBackground()
:   let Mysyn=&syntax
:   if &bg=="light"
:       se bg=dark
:       highlight Normal guibg=black guifg=white
:   else
:       se bg=light
:       highlight Normal guibg=white guifg=black
:   endif  
:   syn on  
:   exe "set syntax=" . Mysyn
":   echo "now syntax is "&syntax
:endfunction
:command! Invbg call ReverseBackground()
:noremap <F11> :Invbg<CR>


"function SetTimeOfDayColors()
"    let hr = strftime("%H")
"    echo "Hour: " . hr
"    if hr < 6 + 0
"        let colorScheme = 'darkblue'
"    elseif hr < 12 + 0
"        let colorScheme = 'golden'
"    elseif hr < 18 + 0
"        let colorScheme = 'murphy'
"    else
"        let colorScheme = 'koehler'
"    endif
"    "if g:colors_name |~ colorScheme
"        echo 'Setting color to ' . colorScheme
"        execute 'colorscheme ' . colorScheme
"    "endif
"endfunction

set statusline=%<%t%h%m%r\ \ %a\ %{strftime(\"%c\")}%=0x%B\ 
    \\ line:%l,\ \ col:%c%V\ %P
"set statusline += \ %{SetTimeOfDayColors()}

"LaTeX
" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex can be called correctly.
"set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

" A function for a prettier fold.
"fu! CustomFoldText()
"    "get first non-blank line
"    let fs = v:foldstart
"    while getline(fs) =~ '^\s*$' | let fs = nextnonblank(fs + 1)
"    endwhile
"    if fs > v:foldend
"        let line = getline(v:foldstart)
"    else
"        let line = substitute(getline(fs), '\t', repeat(' ', &tabstop), 'g')
"    endif
"
"    let w = winwidth(0) - &foldcolumn - (&number ? 8 : 0)
"    let foldSize = 1 + v:foldend - v:foldstart
"    let foldSizeStr = " " . foldSize . " lines "
"    let foldLevelStr = repeat("+--", v:foldlevel)
"    let lineCount = line("$")
"    let foldPercentage = printf("[%.1f", (foldSize*1.0)/lineCount*100) . "%] "
"    let expansionString = repeat(".", w - strwidth(foldSizeStr.line.foldLevelStr.foldPercentage))
"    return line . expansionString . foldSizeStr . foldPercentage . foldLevelStr
"endf
"foldtext=CustomFoldText()
