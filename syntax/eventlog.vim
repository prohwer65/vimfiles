" Vim syntax file
" Language: EZTool Event Log files
" Maintainer: 
" Last Change: 2026.02.19
" Version: 1.0

if version < 600
	syntax clear
elseif exists("b:current_syntax")
	finish
endif

"-------------------------------------------------------------------------------
" Syntax
"-------------------------------------------------------------------------------

" comment
syn match Error        "ERROR.*"
"syn match Error         "VDT.*"
syn match Error         "MCU temp.*"
syn match Comment       "Thermal.PS.*"
syn match Float          "[0-9]* ms"
syn match Label          "[Rr]eset"
syn match TypeDef          "debug.*"
syn match Underlined       "error.*"

syn match Error "Firmware hangs up"
syn match Error "WHILE Error ID"
syn match Error "RwCmdQueueService() "
syn match Error "UNC"
syn match Error "rt_err()"
syn match Error "DRAM_ECC(CPU 1BIT_ERR)"
syn match Error "DRAM_ECC(1BIT_ERR)"
syn match Error "DRAM_ECC(CPU 2BIT_ERR)"
syn match Error "DRAM_ECC(2BIT_ERR)"
syn match Error "E2EInjectErr"
syn match Error "E2E_ER"
syn match Error "E2E_ERR_LBA"
syn match Error "MarkBadBlock() Start"
syn match Error "MarkBadBlock() End"
syn match Error "Over temperature"
syn match Error "Read ECC Fail"
syn match Error "Program Fail"
syn match Error "Erase Fail"
syn match Error "ATA_SRST"
syn match Error "HW_SRST"
syn match Error "SATA_FatalError"
syn match Error "SATA_TX_Error"
syn match Error "SATA_RX_Error"
syn match Error "SATA_Link_Up"
syn match Error "SATA_Link_lose"
syn match Error "SATA_COMRESET"
syn match Error "SATA_INFS"
syn match Error "SATA_LSCS"
syn match Error "SataErrHandle() LBA"
syn match Error "SataErrHandle() 1"
syn match Comment "Temperature:"
syn match Error "g16CmdErrorFlag"
syn match Error "HandleInFlushDram done"
syn match Error "HandleInFlushDram() End, Hang"
syn match Error "FlushCache() Start"
syn match Error "FlushCache() End"
syn match Error "SYS_VDT40_Powerdown()"
syn match Error "SYS_VDT27_Powerdown()"
syn match Error "SYS_VDT18_Powerdown()"
syn match Error "gThrottlingStage"
syn match Error "Capacitor unfull"
syn match Error "PowerCycle Count"


" syn match Comment   "^§.*$"
" syn match Comment   "\%(==\)\@<=[^=]*$"

" templates, lists, ...
" syn match Structure "^==\s*\%(TEMPLATE:\)\?[a-zA-Z0-9\-+.,_ ]\+==\%(.\+==\)\?"
" syn match Structure "^==\s*ENDTEMPLATE\s*=="

" syn match Structure "^==\s*HELP:[a-zA-Z0-9\-+.,_ ]\+==\%(.\+==\)\?"

" syn match Structure "^==\s*SEP:[a-zA-Z0-9\-+.,_ ]\+=="

" syn match Structure "^==\s*LIST:\s*[a-zA-Z0-9_]\+\s*==\%(.\+==\)\?"
" syn match Structure "^==\s*ENDLIST\s*=="

" style sections
" syn match Statement "^==\s*IF\s\+|STYLE|\s\+IS\s\+[a-zA-Z0-9_]\+\s*=="
" syn match Statement "^==\s*ENDIF\s*=="

" syn match Statement "^==\s*USE\s\+STYLES\s*:[a-zA-Z0-9_, ]\+=="
" syn match Statement "^==\s*ENDSTYLES\s*=="

" syn match Statement "^==\s*USE\s\+FILETYPES\s*:[a-zA-Z0-9_, ]\+=="
" syn match Statement "^==\s*ENDFILETYPES\s*=="

" functions: command mode
" syn match Function  "InterfaceVersion\ze\s*("

" syn match Function  "IncludeFile\ze\s*("
" syn match Function  "SetFormat\ze\s*("
" syn match Function  "SetMacro\ze\s*("
" syn match Function  "SetStyle\ze\s*("
" syn match Function  "SetSyntax\ze\s*("
" syn match Function  "SetPath\ze\s*("

" syn match Function  "MenuShortcut\ze\s*("
" syn match Function  "SetProperty\ze\s*("
" syn match Function  "SetMap\ze\s*("
" syn match Function  "SetShortcut\ze\s*("
" syn match Function  "SetMenuEntry\ze\s*("
" syn match Function  "SetExpansion\ze\s*("

" functions: standard template
" syn match Function  "|\zsDefaultMacro\ze("
" syn match Function  "|\zsPrompt\ze("
" syn match Function  "|\zsPickFile\ze("
" syn match Function  "|\zsPickList\ze("
" syn match Function  "|\zsSurroundWith\ze("
" syn match Function  "|\zsInsert\ze("
" syn match Function  "|\zsInsertLine\ze("

" syn match Comment   "|C(.\{-})|"
" syn match Comment   "|Comment(.\{-})|"

" functions: help
" syn match Function  "|\zsWord\ze("
" syn match Function  "|\zsPattern\ze("
" syn match Function  "|\zsDefault\ze("
" syn match Function  "|\zsSubstitute\ze("
" syn match Function  "|\zsLiteralSub\ze("
" syn match Function  "|\zsBrowser\ze("
" syn match Function  "|\zsSystem\ze("
" syn match Function  "|\zsVim\ze("

" strings, macros, tags, jump targets
" syn match TemplString  "'\%([^']\|''\)*'" contains=TemplMacro,TemplTag,TemplJump
" syn match TemplString  "\"\%([^"\\]\|\\.\)*\"" contains=TemplMacro,TemplTag,TemplJump

" syn match TemplMacro   "|?\?[a-zA-Z][a-zA-Z0-9_]*\%(:\a\)\?\%(%\%([-+*]\+\|[-+*]\?\d\+\)[lrc]\?\)\?|"
" syn match TemplTag     "|<\+>\+|"
" syn match TemplTag     "<CURSOR>\|{CURSOR}"
" syn match TemplTag     "<RCURSOR>\|{RCURSOR}"
" syn match TemplTag     "<SPLIT>"
" syn match TemplTag     "<CONTENT>"

" syn match TemplJump    "<\([+-]\)\w*\1>"
" syn match TemplJump    "{\([+-]\)\w*\1}"
" syn match TemplJump    "\[\([+-]\)\w*\1]"

"-------------------------------------------------------------------------------
" Highlight
"-------------------------------------------------------------------------------

highlight default link TemplString  String
highlight default link TemplMacro   Tag
highlight default link TemplTag     Tag
highlight default link TemplJump    Search

let b:current_syntax = "eventlog"
