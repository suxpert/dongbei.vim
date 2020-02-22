" Vim filetype plugin file
" Language:	dongbei
" Maintainer:	LiTuX

if exists("b:did_ftplugin")
    finish
endif

" Don't load another plugin for this buffer
let b:did_ftplugin = 1

let s:cpo_save= &cpo
set cpo&vim

setlocal suffixesadd=.dongbei
setlocal comments=b:#,fb:-
setlocal commentstring=#%s

setlocal matchpairs+=【:】,“:”,「:」,（:）

if exists("loaded_matchit")
    let b:match_words  = '[咋开]\s*整\s*[\:：]:滚\s*犊\s*子\s*吧:整\s*完\s*了\s*[。！]'
    let b:match_words .= ',\(从\s*一\s*而\s*终\|在\s*苹\s*果\s*总\s*部\)\=磨\s*叽\s*[\:：]'
    let b:match_words .= ':接\s*着\s*磨\s*叽:尥\s*蹶\s*子:磨\s*叽\s*完\s*了\s*[。！]'
    " TODO: the following match can not jump to the 'then' part if no 'else'.
    let b:match_words .= ',寻\s*思\s*[\:：]:要\s*行\s*咧\s*就:要\s*不\s*行\s*咧\s*就'

    let b:match_skip   = 's:comment\|string'
endif

" Undo the stuff we changed.
let b:undo_ftplugin = "unlet! b:match_words"

let &cpo = s:cpo_save
unlet s:cpo_save
