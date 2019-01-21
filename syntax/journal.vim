" Vim syntax file
" Maintainer: Nate Armstrong

if exists("b:current_syntax")
  finish
endif

" Comments start with a '"'
syn match comment /^\s*\"\s.\+$/
hi def link comment Comment

" Notes start with a '-'
syn match note /^\s*-\s.\+$/
hi def link note Operator

" Priority tasks start with a '+'
syn match priority /^\s*+\s.\+$/
hi def link priority Question

" Completed starts with 'x' or 'X'
syn match completed /^\s*[xX]\s.\+$/
hi def link completed Comment

" Emphasize starting with '!'
syn match important /^\s*!.*$/
hi def link important Boolean

" Moved ahead starts with '>'
syn match ahead /^\s*[>]\s.*$/
hi def link ahead Comment

" Moved to forecast starts with '<'
syn match forecast /^\s*[<]\s.*$/
hi def link forecast Comment

" Sections start with '#'
syn match heading /^\s*[#]\s.*$/
hi def link heading Boolean

" Events start with '@'
syn match event /^\s*[@]\s.*$/
hi def link event WarningMsg

" Days of the week
syn keyword weekday MON TUE WED THU FRI Mon Tue Wed Thu Fri
syn keyword weekend SAT SUN Sat Sun
hi def link weekday PreProc
hi def link weekend PreProc

" Months
syn keyword month JAN FEB MAR APR MAY JUN JUL AUG SEP OCT NOV DEC
syn keyword month Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec
hi def link month WarningMsg

" Forecast
syn match forecastDay /[0-9].:\s/
hi def link forecastDay PreProc

" Dates
syn match date @\<[0-9]\{4}[-/][0-9]\{2}[-/][0-9]\{2}@
hi def link date PreProc

" Numbers
syn match time @\<[0-9]\{2}:[0-9]\{2}:[0-9]\{2}\([,.][0-9]\+\)\?@
hi def link time PreProc

" URLs
syn match url %https\?://\(\w\+\(:\w\+\)\?@\)\?[A-Za-z0-9-_.]*\(:[0-9]\{1,5}\)\?\S*%
hi def link url Underlined

let b:current_syntax = "journal"
