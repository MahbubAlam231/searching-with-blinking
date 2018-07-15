# searching-with-blinking

While searching even with `hlsearch` on, it's sometimes hard to find the next match. This plugin is to help find the next match quickly.

This plugin remaps `n` and `N` to keep the next match in the middle of the screen and blink it in red color (one can change the color if he/she wishes) with a function with customerizable `blinktime` variable (by default it blinks for 0.05 unit of time). 

    nnoremap <buffer> n nzz:call HLNext(0.05)<cr>:echo<cr>
    nnoremap <buffer> N Nzz:call HLNext(0.05)<cr>:echo<cr>

Although blinking is mostly helpful, sometimes one might want to turn blinking off and just keep the match in the middle; especially when one cannot come up with a rigorous search pattern to go to the exact place he/she wants to go, he/she might want to skim through unnecessary matches to find the desired one.
