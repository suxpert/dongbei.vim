" Vim syntax file
" Language: dongbei
" Maintainer:   LiTuX

" quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

" see KW_* in dongbei.py
syn match   dongbeiInclude          "翠\s*花\s*，\s*上"

syn match   dongbeiBoolean          "[没有]\s*毛\s*病"

syn match   dongbeiConstant         "[零一二三四五六七八九十两俩仨]"
syn match   dongbeiConstant         "鸭\s*蛋"

syn match   dongbeiSpecial          "活\s*雷\s*锋"
syn match   dongbeiSpecial          "啥\s*也\s*不\s*是"
syn match   dongbeiSpecial          "[装削整]"

syn match   dongbeiIdentifier       "【[^#]\{-1,}】"
syn match   dongbeiFunction         "\(整\)\@<=\s*\zs[^#]\{-1,}\ze\s*[（、。！]"
syn match   dongbeiFunction         "^\s*\zs[^#]\{-1,}\ze\s*\(（[^#]*）\)\=\(阶\s*级\)\@<!\s*咋\s*整\s*："

" TODO, some of these matches are buggy
" syn match   dongbeiVariable         "\(削\)\@<=\s*\zs[^#]\{-1,}\ze\s*[。！]"
" syn match   dongbeiVariable         "\s*\zs[^#]\{-1,}\ze\s*[装从在]"
" syn match   dongbeiVariable         "\s*\zs[^#]\{-1,}\ze\s*是\s*活\s*雷\s*锋"
" syn match   dongbeiVariable         "\s*\zs[^#]\{-1,}\ze\s*都\s*是\s*活\s*雷\s*锋"

syn match   dongbeiStructure        "最\s*高\s*指\s*示"
syn match   dongbeiStructure        "俺\s*的"
syn match   dongbeiStructure        "领\s*导\s*的"
syn match   dongbeiStructure        "路\s*银"

syn match   dongbeiSymbolOperator   "[，、。！？的]"
syn match   dongbeiSymbolOperator   "[「」]"
syn match   dongbeiSymbolOperator   "[（）]"

syn match   dongbeiCompare          "还\s*大"
syn match   dongbeiCompare          "还\s*小"
syn match   dongbeiCompare          "一\s*样\s*一\s*样\s*的"
syn match   dongbeiCompare          "不\s*是\s*一\s*样\s*一\s*样\s*的"

syn match   dongbeiFunction         "唠\s*唠[:：]"
syn match   dongbeiFunction         "你\s*吱\s*声"
syn match   dongbeiFunction         "掐\s*头"
syn match   dongbeiFunction         "去\s*尾"
syn match   dongbeiFunction         "有\s*几\s*个\s*坑"
syn match   dongbeiFunction         "新\s*对\s*象"

syn match   dongbeiStatement        "炮\s*决"
syn match   dongbeiStatement        "滚\s*犊\s*子\s*吧"
syn match   dongbeiStatement        "接\s*着\s*磨\s*叽"
syn match   dongbeiStatement        "尥\s*蹶\s*子"
syn match   dongbeiStatement        "抱\s*团"

syn match   dongbeiStatement        "都\=\s*是\s*活\s*雷\s*锋"
syn match   dongbeiStatement        "来\s*了\s*[个群]"

syn match   dongbeiStatement        "阶\s*级"
syn match   dongbeiStatement        "的\s*接\s*班\s*银"

syn match   dongbeiException        "保\s*准"
syn match   dongbeiException        "辟\s*谣"
syn match   dongbeiError            "整\s*叉\s*劈\s*了\s*[:：]"

syn match   dongbeiConditional      "寻\s*思\s*[:：]"
syn match   dongbeiConditional      "要\s*行\s*咧\s*就"
syn match   dongbeiConditional      "要\s*不\s*行\s*咧\s*就"

syn match   dongbeiOperator         "[从到在比跟]"
syn match   dongbeiOperator         "[加减乘]"
syn match   dongbeiOperator         "除\s*以"
syn match   dongbeiOperator         "齐\s*整\s*整\s*地\s*除\s*以"
syn match   dongbeiOperator         "刨\s*掉\s*一\s*堆\s*堆"
syn match   dongbeiOperator         "拉\s*饥\s*荒"
syn match   dongbeiOperator         "稍\s*稍"
syn match   dongbeiOperator         "走\s*走"
syn match   dongbeiOperator         "稍[^#]*步" contains=dongbeiConstant,dongbeiNumber
syn match   dongbeiOperator         "走[^#]*步" contains=dongbeiConstant,dongbeiNumber

syn match   dongbeiOperator         "的\s*老"
syn match   dongbeiOperator         "的\s*老\s*[大幺]"

syn match   dongbeiBegin            "咋\s*整\s*[:：]"
syn match   dongbeiBegin            "开\s*整\s*[:：]"
syn match   dongbeiEnd              "整\s*完\s*了"
syn match   dongbeiBegin            "磨\s*叽\s*[:：]"
syn match   dongbeiBegin            "从\s*一\s*而\s*终\s*磨\s*叽\s*[:：]"
syn match   dongbeiBegin            "在\s*苹\s*果\s*总\s*部\s*磨\s*叽\s*[:：]"
syn match   dongbeiEnd              "磨\s*叽\s*完\s*了"


" Standard numbers from python.vim
syn match   dongbeiNumber	        "\<0[oO]\=\o\+[Ll]\=\>"
syn match   dongbeiNumber	        "\<0[xX]\x\+[Ll]\=\>"
syn match   dongbeiNumber	        "\<0[bB][01]\+[Ll]\=\>"
syn match   dongbeiNumber	        "\<\%([1-9]\d*\|0\)[Ll]\=\>"
syn match   dongbeiNumber	        "\<\d\+[jJ]\>"
syn match   dongbeiNumber	        "\<\d\+[eE][+-]\=\d\+[jJ]\=\>"
syn match   dongbeiNumber           "\<\d\+\.\%([eE][+-]\=\d\+\)\=[jJ]\=\%(\W\|$\)\@="
syn match   dongbeiNumber           "\%(^\|\W\)\zs\d*\.\d\+\%([eE][+-]\=\d\+\)\=[jJ]\=\>"

" String
syn region  dongbeiString           start=+“+ end=+”+

syn keyword dongbeiTodo             contained TODO FIXME DEBUG NOTE
syn match   dongbeiComment          "#.*$"  contains=dongbeiTodo

" ############################################################################
" Define the default highlighting.
hi def link dongbeiSymbolOperator   dongbeiOperator
hi def link dongbeiBegin        dongbeiRepeat
hi def link dongbeiEnd          dongbeiRepeat
hi def link dongbeiCompare      dongbeiSpecial

hi def link dongbeiInclude      Include
hi def link dongbeiSpecial      Special
hi def link dongbeiBoolean      Boolean
hi def link dongbeiComment      Comment
hi def link dongbeiConditional  Conditional
hi def link dongbeiConstant     Constant
hi def link dongbeiStructure    Structure
hi def link dongbeiIdentifier   Identifier
hi def link dongbeiException    Exception
hi def link dongbeiFunction     Function
hi def link dongbeiNumber       Number
hi def link dongbeiOperator     Operator
hi def link dongbeiRepeat       Repeat
hi def link dongbeiStatement    Statement
hi def link dongbeiString       String
hi def link dongbeiTodo         Todo
hi def link dongbeiError        Error


let b:current_syntax = "dongbei"

"EOF
