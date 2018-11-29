# searching-with-blinking

While searching even with `hlsearch` on, it's sometimes hard to find the next match. This plugin is to help find the next match quickly.

This plugin remaps `n` and `N` to keep the next match in the middle of the screen and blink it in red color for 0.05 sec (one can change the color and blinktime if he/she wishes by going to `~/.vim/bundle/searching-with-blinking/plugin/searching-with-blinking.vim`).

Although blinking is mostly helpful, sometimes one might want to turn blinking off and just keep the next match in the middle; especially when one cannot come up with a rigorous search pattern to go to the exact place he/she wants to go, he/she might want to skim through unnecessary matches to find the desired one. The `<localleader>nm` toggles `n` and `N` between these two behaviours.

## Installation:

#### Using [Vundle](https://github.com/VundleVim/Vundle.vim)

1. Add `Plugin 'MahbubAlam231/searching-with-blinking'` to your `.vimrc`
2. Run `:PluginInstall`
