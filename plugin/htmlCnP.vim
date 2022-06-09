" htmlCnP.vim
" Copy and Paste in HTML mode.
" Paul Rohwer August 21, 2020
"
" Creates a Macro that will copy the visual mode selection in the the system 
" Paste buffer in an HTML format that allow you to paste into Outlook or Word
" with the existing color scheme.
"
" Windows only.  
" Use Marco @V in Visual mode to copy HTML format. Paste into Mail,
"
" 
let s:MSWIN = has("win16") || has("win32")   || has("win64")    || has("win95")
let s:UNIX  = has("unix")  || has("macunix") || has("win32unix")
"
if s:MSWIN 
    let @V = ':TOhtmlggVG"*y:q!:!start /min powershell -noprofile "gcb | scb -as"'
endif
" vim: tabstop=2 shiftwidth=2 foldmethod=marker expandtab
