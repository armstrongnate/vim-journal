" Vim syntax file
" Maintainer: Nate Armstrong

if exists("b:current_syntax")
  finish
endif

" Comments start with a '"'
syn match comment /\s*\"\s.\+$/
hi def link comment Comment

" Notes start with a '-'
syn match note /\s*-\s.\+$/
hi def link note Text

" Completed starts with 'x' or 'X'
syn match completed /\s*[xX]\s.\+$/
hi def link completed Comment

" Todo starts with '*'
syn match task /\s*\*\s.\+$/
hi def link task Operator

" Emphasize starting with '!'
syn match important /\s*!.*$/
hi def link important Question

" Moved ahead starts with '>'
syn match ahead /\s*[>]\s.*$/
hi def link ahead Comment

" Moved to forecast starts with '<'
syn match forecast /\s*[<]\s.*$/
hi def link forecast Comment

" Sections start with '#'
syn match heading /\s*[#]\s.*$/
hi def link heading Boolean

" Events start with '@'
syn match event /\s*[@]\s.*$/
hi def link event WarningMsg


" Days of the week
syn keyword weekday MON TUE WED THU FRI Mon Tue Wed Thu Fri
syn keyword weekend SAT SUN Sat Sun
hi def link weekday PreProc
hi def link weekend MoreMsg

" Months
syn keyword month JAN FEB MAR APR MAY JUN JUL AUG SEP OCT NOV DEC
syn keyword month Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec
hi def link month WarningMsg

" URLs
syn match url %https\?://\(\w\+\(:\w\+\)\?@\)\?[A-Za-z0-9-_.]*\(:[0-9]\{1,5}\)\?\S*%
hi def link url Underlined

" Top Level
syn match topLevel /\%1l\%1c[^[:punct:] ].*$/ contains=ALLBUT,@NoSpell,topLevel
syn region topLevel start=/\%(^\s*$\n^\)\@<=[^[:punct:] ]/ end=/[^.,]\ze\n\%(\s*$\|[[:punct:] ]\)/ oneline contains=ALLBUT,@NoSpell,topLevel
hi def link topLevel Directory

syn match topLevel /^\S\+.*\n[-=]\+$/ contains=@Spell,topLevelUnderline
syn match topLevelUnderline /^[-=]\+$/

" Dates
syn match date @\<[0-9]\{4}[-/][0-9]\{2}[-/][0-9]\{2}@
hi def link date Directory

" Numbers
syn match time @\<[0-9]\{2}:[0-9]\{2}:[0-9]\{2}\([,.][0-9]\+\)\?@
hi def link time Number

let b:current_syntax = "journal"
