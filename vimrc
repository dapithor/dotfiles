syntax enable
set background=dark
" colorscheme solarized

" Use vim settings rather then Vi
set nocompatible

" first things first... gimme a proper title bar!
set title

" Line numbering
set nu
set tabstop=4

"Make use of the "status line" to show possible completions of command line
"commands, file names, and more. Allows to cycle forward and backward throught
"the list.
set wildmenu
set wildmode=list:longest,full
" set wildmode=full

" let me see the special characters... tabs, trailing spaces, wrapped lines
" might want to set nolist if on a monochrome console...
set lcs=tab:>-,trail:.,extends:$
" set nolist

" highlighted search
set hlsearch
set incsearch

" Shows the "ruler" for the cursor, ie its current position with line+column and the percentage within the buffer. This saves me typing CTRL-G (or better "g CTRL-G")
set ruler

" Make sure the status line is always displayed
set laststatus=2

set statusline=
set statusline +=%1*\ %n\ %*            "buffer number
set statusline +=%2*%m%*                "modified flag
set statusline +=%4*\ %<%F\ %*          "full path
set statusline +=%5*%{&ff}%*            "file format
set statusline +=%3*%y%*                "file type
set statusline +=%1*%{\"[\".(&fenc==\"\"?&enc:&fenc).\"]\\"}%* "file encoding
set statusline +=%1*%=%5l%*             "current line
set statusline +=%1*,%c\ %*             "comma current column
"set statusline +=%2*/%L%*               "total lines
"set statusline +=%1*%4v\ %*             "virtual column number
set statusline +=%1*\ %P                "location percent of file under
"set statusline +=%2*0x%04B\ %*          "character under cursor (like "ga")
"Produces-->   1 [+]  ~/.vimrc unix[utf-8]  48,1  60%
"
"set stl=%f\ %m\ %r\ Line:\ %l/%L[%p%%]\ Col:\ %c\ Buf:\ #%n\ [%b][0x%B]
"Produces--> .vimrc [+]  Line: 49/60[81%] Col: 72 Buf: #1 [93][0x5D]

"" Make command line two lines high
set ch=2

"" let me see those `invisible' commands, already!!!
set showcmd

"" match parenthasis, /very/ important (epecially for programming)
set showmatch

set foldenable          " Enable folding of functions

" highlight the status bar when in insert mode
if version >= 700
  au InsertEnter * hi StatusLine ctermfg=235 ctermbg=2
  au InsertLeave * hi StatusLine ctermbg=240 ctermfg=12
endif
