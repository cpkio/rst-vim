hi link xMarkup Comment
syntax match xMarkup '^\s*\.\.\_s\+' nextgroup=xTarget,xSubst,xDirective,xComment

hi link xComment xMarkup
syn region xComment start='[^.|[_[:blank:]]\+[^:[:blank:]]\_s\@=' skip='^$' end='^\s\@!' contains=@Spell contained

" hi link xDirective Normal
syntax region xDirective start='[A-z-]\+::' end='\_^\@=\ze\S' contains=xDirectiveHead,xDirectiveField,@xInlines,@Spell

hi link xDirectiveHead Label
syntax region xDirectiveHead start='[A-z-]\+' end='::' contained contains=@NoSpell oneline

hi link xSubst Constant
syntax match xSubst '\zs|[^|]\+|\ze' nextgroup=xDirective

" Top level fields
hi link xField Tag
syntax match xField '\v^:\w+:\s+' contains=@NoSpell

" Directive fields
hi link xDirectiveField xField
syntax match xDirectiveField '\v^\s+:\w+:\s+' contained contains=@NoSpell

hi link xLineBlock xBlockquote
syntax region xLineBlock start='\v^\s*\|\s+' end='\v^\@=\ze\S' contains=@Spell
syntax region xLineBlock start='\v^\s*\>\s*' end='\v^\@=\ze\S' contains=@Spell

hi link xBlockquote Constant
syntax region xBlockquote start='\v\_^\_$\n^\z(\s{3,})' end='\v^\@=\ze\S' contains=@Spell

hi link xSection DiffText
syntax match xSection '\v%(\S\s*\n)@<!\_^\s*\S.*\n%(([=`'"~^_*+#-])\1+|([:.])\2{2,})\s*$'
syntax match xSection '\v%(\S\s*\n)@<!\_^(([=`:.'"~^_*+#-])\2+\s*)\n\s*\S.*\n\1$'


"""""""""""""""""""""""""""
"
" INLINE ELEMENTS
" INLINE ELEMENTS
" INLINE ELEMENTS
"
"""""""""""""""""""""""""""
hi link xInline Type

" \ ++ non-space
syntax match xEscape '\%x5C\S'
hi link xEscape xInline

" :role:`…`
syntax region xRole start='\zs:\w\+:\%x60' end='\%x60\ze' contains=@NoSpell,xRoleInline
syntax region xRoleInline start='\%x60\zs' end='\ze\%x60' contained contains=@Spell transparent
hi link xRole xInline

" Inline literals ``...`` & interpreted text `...`
syntax region xAsIs start='\z\(\%x60\+\)' end='\z1' contains=@Spell
hi link xAsIs xInline

"""""""""""""""""""""""""""
" ITALICS AND BOLDS
"""""""""""""""""""""""""""
syntax region xItalicBold start='\*\+' end='\*\+' contains=@NoSpell,xItalicBoldInline
syntax match xItalicBoldInline '\*\zs[^*]+\ze\*' contained contains=@Spell
hi link xItalicBold xInline
hi link xItalicBoldInline xItalicBold

syntax cluster xInlines contains=xEscape,xRole,xAsIs,xItalicBold

"""""""""""""""""""""""""""
" LINKS AND TARGETS
"""""""""""""""""""""""""""
syntax region xLinkQuoted start='\%x60' end='\%x60_\{1,2}' contains=@Spell,xHyperLinkAngled oneline
syntax match xLink '[A-Za-zА-Яа-я]\+_\{1,2}'
syntax match xTarget '\v_[A-Za-zА-Яа-я ]+:'
syntax match xTarget '__:'
syntax region xTargetInline start='_\%x60' end='\%x60' contains=@Spell oneline
syntax region xFootnote start='\[' end='\]_'

hi link xHyperLink Underline
syntax match xHyperLink '\<\%(\%(\%(https\=\|file\|ftp\|gopher\)://\|\%(mailto\|news\):\)[^[:space:]''\"<>]\+\|www[[:alnum:]_-]*\.[[:alnum:]_-]\+\.[^[:space:]''\"<>]\+\)[[:alnum:]/]\|\<[[:alnum:]_-]\+\%(\.[[:alnum:]_-]\)*@[[:alnum:]]\%([[:alnum:]-]*[[:alnum:]]\.\)\+[[:alnum:]]\%([[:alnum:]-]*[[:alnum:]]\)\=\>' " ripped from riv.vim
syntax region xHyperLinkAngled start='<' end='>' contains=@NoSpell,xHyperLink

hi link xLink xInline
hi link xLinkQuoted xLink
hi link xTarget xLink
hi link xFootnote xLink
hi link xHyperLinkAngled xLinkQuoted

syntax cluster xLinking contains=xLink,xLinkQuoted,xTarget,xTargetInline,xFootnote

"""""""""""""""""""""""""""
" LISTS
"""""""""""""""""""""""""""
hi link xList Identifier
hi link xNumList xList
hi link xUnnumList xList
syntax match xNumList '\v^\s*\(?[а-яa-zA-Z#][).]\s+'
syntax match xNumList '\v^\s*\(?[0-9](\.[0-9]+)*[).]\s+'
syntax match xUnnumList '\v^\s*[-+o*•‣]\s+'
syntax cluster xList contains=xNumList,xUnnumList
