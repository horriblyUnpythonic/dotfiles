" Python Comment
function! Commentpython()
    " normal `>
    let endline=line("'>")
    " echo col('.')
    normal `<
    normal ^
    let startline=line("'<")

    let r = startline
    let low_col = 1000
    let all_hash = 1
    while r <= endline
        let this_c = col('.')-1
        " let first_char = strpart(getline("."), this_c, 2)
        let first_char = getline('.')[this_c]
        if first_char == ''
        else
            if first_char == "#"
            else
                let all_hash = 0
            endif

            if this_c < low_col
                let low_col = this_c
            endif
        endif

        let r += 1
        " echo getline(r)
        normal +
    endwhile

    if all_hash == 0
        echo 'comment'
    else
        echo 'uncomment'
    endif

    let r = startline
    while r <= endline
        call setpos('.', [0,r,low_col+1])
        let first_char = strpart(getline("."), this_c, 2)
        if first_char == ''
            " echo 'empty first char on'
            " echo r
        else
            if all_hash
                if first_char == '# '
                    normal xx
                else
                    normal x
                endif
            else
                " call setpos('.', [0,r,low_col])
                normal i# 
            endif
        endif

        let r += 1
    endwhile
    normal <CR>

endfunction

nnoremap <C-]> v:<C-U>call Commentpython()<CR>
vnoremap <C-]> :<C-U>call Commentpython()<CR>

" Swap tmux run map
function! Swaptmuxrun()
    let t = maparg('<leader>t')
    if t =~ "-h"
        echo "switch to vert"
        map <leader>t :w<CR>:silent !tmux split -v "ipython -i %"<CR>
    else
        echo "switch to horz"
        map <leader>t :w<CR>:silent !tmux split -h "ipython -i %"<CR>
    endif
endfunction


let pythonpath = system("python -c \"from distutils import sysconfig; print(sysconfig.get_python_lib())\"")
let &path = &path . "," . substitute(pythonpath, '\n$', ',', 'g')
set path+=**

set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set laststatus=2

set number
" Enable syntax highlighting
" syntax enable
syntax on


colorscheme desert
set background=dark

set hlsearch

hi LineNr ctermfg=DarkGrey
hi Comment ctermfg=LightBlue
hi Search cterm=NONE ctermbg=DarkGrey ctermfg=LightGreen
hi MatchParen ctermbg=DarkGrey
hi Pmenu ctermbg=DarkGrey
hi SpellBad ctermbg=DarkRed ctermfg=Green
hi SpellCap ctermbg=DarkBlue ctermfg=Green
hi SpellRare ctermbg=DarkBlue ctermfg=Green
hi SpellLocal ctermbg=DarkGrey

set spell spelllang=en_us


nnoremap Q 0yt=A<C-r>=<C-r>"<CR><Esc>

filetype plugin on
filetype indent on


" Pylint configuration file
" let g:pymode_lint_config = '~/pylint.rc'
" let g:pymode_rope_complete_on_dot = 0


" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab " Use spaces instead of tabs
set ai "Auto indent
set si "Smart indent

set foldmethod=indent
set foldlevelstart=10

set wrap "Wrap lines
set breakindent
set showbreak=…
set linebreak

set list
set listchars=tab:>-,trail:•,extends:>,precedes:<,nbsp:•

set wildmenu


map <F8> :r !pbpaste<CR>
map <C-F8> :.w !pbcopy<CR><CR>
map <leader>o :!cat % \| pbcopy<CR>
map Z <C-w>+<bar><C-w>>
map Y y$
map H <C-o>
map L <C-i>
map ; "*


map <leader>b oimport pdb;pdb.set_trace()  # XXX Breakpoint<Esc>
map <leader>m iif __name__ == '__main__':<esc>jVG>
map <leader>r :w<CR>:!python %<CR>
map <leader>t :w<CR>:silent !tmux split "ipython %"<CR>
map <leader>T :call Swaptmuxrun()<CR>
map <leader>d :!debug %<CR>
nmap <leader>p :!profile %<CR>
vmap <leader>p <esc>'<Oimport cProfile<CR>pr=cProfile.Profile()<CR>pr.enable()<CR><esc>'>opr.disable()<CR>pr.dump_stats('vimauto.profile')<CR><esc>
nmap <leader>s 1z=
" nmap <leader>s :!stats<CR>
map <leader>c :!git difftool %; git commit %<CR>


map <C-j> gj
map <C-k> gk

imap ˙ <left>
imap ∆ <down>
imap ˚ <up>
imap ¬ <right>
imap π <C-r>"
imap <C-e> <C-o>$
" :imap jj <Esc>
" :imap kk <Esc>
" :imap hh <Esc>
" :imap lll <Esc>

autocmd FileType python set colorcolumn=0


set guicursor+=i:blinkwait0
