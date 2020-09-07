" backupFiles.vim
" redirect where all the backup files get stored
" Paul Rohwer August 21, 2020
"
"
" Windows only.
"
"


"set nobackup       "no backup files
"set nowritebackup  "only in case you don't want a backup file while editing
"set noswapfile     "no swap files

set backup
set backupdir=C:\Temp\vimbackup
set backupskip=C:\Temp\vimbackup\*
set directory=C:\Temp\vimbackup
set writebackup
set undodir=C:\Temp\vimbackup

" Make those folders automatically if they don't already exist.
if !isdirectory(expand(&undodir))
    call mkdir(expand(&undodir), "p")
endif
if !isdirectory(expand(&backupdir))
    call mkdir(expand(&backupdir), "p")
endif
if !isdirectory(expand(&directory))
    call mkdir(expand(&directory), "p")
endif


