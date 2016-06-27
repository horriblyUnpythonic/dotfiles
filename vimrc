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


nnoremap Q <nop>

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
set foldmethod=indent
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines


map <F8> :r !pbpaste<CR>
map <C-F8> :.w !pbcopy<CR><CR>
map Z <C-w>+
map Y y$

map ; "*


map <leader>b oimport pdb;pdb.set_trace()  # XXX Breakpoint<Esc>
map <leader>r :!python %<CR>
map <leader>d :!debug %<CR>
nmap <leader>p :!profile %<CR>
vmap <leader>p <esc>'<Oimport cProfile<CR>pr=cProfile.Profile()<CR>pr.enable()<CR><esc>'>opr.disable()<CR>pr.dump_stats('vimauto.profile')<CR><esc>
nmap <leader>s :!stats<CR>
map <leader>c :!git difftool %& git commit %<CR>

imap ˙ <left>
imap ∆ <down>
imap ˚ <up>
imap ¬ <right>
imap π <C-r>"
" :imap jj <Esc>
" :imap kk <Esc>
" :imap hh <Esc>
" :imap lll <Esc>

autocmd FileType python set colorcolumn=0


set guicursor+=i:blinkwait0
