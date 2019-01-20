" Vim syntax file
" Maintainer: Nate Armstrong

if exists("b:current_syntax")
  finish
endif

" Notes start with a '-'
syn match note /\s*-\s.\+$/
hi def link note Text

" Completed starts with 'x' or 'X'
syn match completed /\s*[xX]\s.\+$/
hi def link completed Comment

let b:current_syntax = "journal"
