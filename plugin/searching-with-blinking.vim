" Maintainer    : Mahbub Alam
" License       : This file is placed in public domain
" Version       : 1.1.1
" Description   : Blink search pattern when cursor goes there

function! HLNext(blinktime)
    " Setting the color of blink to be black font on red background
    highlight BlackOnRed ctermfg=black ctermbg=red

    let [bufnum, lnum, col, off] = getpos('.')
    let matchlen = strlen(matchstr(strpart(getline('.'),col-1),@/))
    let target_pat = '\c\%#\%('.@/.'\)'
    let ring = matchadd('BlackOnRed', target_pat, 101)
    redraw
    exec 'sleep ' . float2nr(a:blinktime * 1000) . 'm'
    call matchdelete(ring)
    redraw
endfunction

" Toggle search next with blink and without blink
let s:enabled = 0

function! NextMatchToggle()
    if s:enabled
        nnoremap <buffer> n nzz:call HLNext(0.05)<cr>:echo<cr>
        nnoremap <buffer> N Nzz:call HLNext(0.05)<cr>:echo<cr>
        let s:enabled = 0
    else
        nnoremap <buffer> n nzz
        nnoremap <buffer> N Nzz
        let s:enabled = 1
    endif
endfunction

