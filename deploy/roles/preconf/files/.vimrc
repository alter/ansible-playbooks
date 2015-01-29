set expandtab
set tabstop=2
set shiftwidth=2
set smarttab
set showmatch 
set hlsearch
set incsearch
set ignorecase
set ffs=unix
set fencs=utf-8
set number
set nocompatible 
set termencoding=utf-8
set smartcase
syn on
highlight Comment ctermfg=Red

function! ToggleSpell()
    if !exists("b:spell")
        setlocal spell spelllang=en_us
        let b:spell = 1
    else
        setlocal nospell
        unlet b:spell
    endif
endfunction
nmap <F4> :call ToggleSpell()<CR>
imap <F4> <Esc>:call ToggleSpell()<CR>a

:nnoremap <space> za 

colorscheme github
