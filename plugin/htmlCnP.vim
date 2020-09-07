" htmlCnP.vim
" Copy and Paste in HTML mode.
" Paul Rohwer August 21, 2020
"
" Creates a Macro that will copy the visual mode selection in the the system 
" Paste buffer in an HTML format that allow you to paste into Outlook or Word
" with the existing color scheme.
"
" Windows only.
"
" 
let @V = ':TOhtmlggVG"*y:q!:!start /min powershell -noprofile "gcb | scb -as"'
"let @a = 'iHello World!\bye\<Esc>'

