set nocompatible

" add line numbers
set number

" show position numbers and info
set ruler

" turn on syntac highlighting
syntax enable

colorscheme solarized
set background=dark
if has ('gui_running')
    "set background=dark
    
    " Set the font to inconloata size 12
    set guifont=Inconsolata:h14

else
    "set background=light    
endif

" do not wrap long lines by default
set nowrap

" show tabs as 4 spaces
set tabstop=4

" number of spaces to use for each step of auto indent
set shiftwidth=4

" use spaces instead of tabs
set expandtab

" number of spaces to use when pressing the tab key
set softtabstop=4

" show tabs as >...
set list listchars=tab:>.

" highlight the search
set hlsearch

" incremental search
set incsearch

" ignore case when searching
set ignorecase

" if the search string has a upper case letter in it, the search will be case sensitive
set smartcase

" allow for tab completion in the command line
set wildmode=list:longest

" filetypes to ignore when auto completeing
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn

" always show the status bar
set laststatus=2

" put more information in the status line
set statusline=%F%m%r%h%w\ [format=%{&ff}]\ [type=%Y]\ [ascii=\%03.3b]\ [hex=\%02.2B]\ [len=%L]\ [enc=%{strlen(&fenc)?&fenc:&enc}]\ [pos=%04l,%04v][%p%%]

" Set a print margin, 85
set colorcolumn=85

" add json syntax highlighting
au BufNewFile,BufRead *.json set ft=javascript

au BufNewFile,BufRead *.xaml set ft=xml

" Hightlight trailing whitespace
"highlight ExtraWhitespace ctermbg=red guibg=red

" this will pick up the trailing white space as long as we aren't typing on the line
" match ExtraWhitespace /\s\+\%#\@<!$/

" highlight the current line
set cursorline

" make backspace work like most other things
set backspace=2

" A little snippet that should help with encoding
if has("multi_byte")
    if &termencoding == ""
        let &termencoding = &encoding
    endif
    set encoding=utf-8
    setglobal fileencoding=utf-8
    "setglobal bomb
    set fileencodings=ucs-bom,utf-8,latin1
endif

" Setup indenation
if has("autocmd")
    filetype plugin indent on
endif

" pathogen
call pathogen#infect()
