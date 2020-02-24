" Vim indent file
" Language:     dongbei-lang
" Maintainer:   LiTuX

if exists("b:did_indent")
    finish
endif

let b:did_indent = 1

setlocal autoindent
setlocal indentexpr=GetDongbeiIndent(v:lnum)
setlocal indentkeys+=。,！

if exists("*GetDongbeiIndent")
    finish
endif

fun! GetPrevLineNum(lnum)
    let prev_lnum = a:lnum
    while prev_lnum > 0
        let prev_lnum = prevnonblank(prev_lnum-1)
        let prev_line = getline(prev_lnum)
        if prev_line !~ '^\s*#.*$'
            break
        endif
    endwhile
    return prev_lnum
endfun

fun! GetDongbeiIndent(line_num)
    " Find non-black and non-comment line above the current line
    let prev_lnum = GetPrevLineNum(a:line_num)

    if prev_lnum == 0
        return 0
    endif

    " check if any then/else indent on previous line
    let ppre_lnum = GetPrevLineNum(prev_lnum)
    let ppre_line = getline(ppre_lnum)
    let ppre_adj  = ppre_line =~ '要\s*不\=\s*行\s*咧\s*就\s*#*$'

    let prev_ind  = indent(prev_lnum)
    let prev_line = getline(prev_lnum)
    let curr_line = getline(a:line_num)

    " then, else
    if  prev_line =~ '要\s*不\=\s*行\s*咧\s*就\s*#*$'
        return prev_ind + shiftwidth()
    endif

    " define, class, block
    if prev_line =~ '[咋开]\s*整\s*[:：]\s*#*$'
        return prev_ind + shiftwidth()
    endif
    if curr_line =~ '^\s*整\s*完\s*了[。！]\s*#*$'
        return prev_ind - (1+ppre_adj) * shiftwidth()
    endif

    " loop
    if prev_line =~ '磨\s*叽\s*[:：]\s*#*$'
        return prev_ind + shiftwidth()
    endif
    if curr_line =~ '^\s*磨\s*叽\s*完\s*了[。！]\s*#*$'
        return prev_ind - (1+ppre_adj) * shiftwidth()
    endif

    if ppre_adj
        return indent(ppre_lnum)
    else
        return prev_ind
    endif
endfun
