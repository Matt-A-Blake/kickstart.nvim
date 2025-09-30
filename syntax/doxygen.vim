" Doxygen syntax highlighting
" This file provides enhanced highlighting for Doxygen comments

" Define highlight groups with specific colors
hi doxygenComment guifg=#7C3AED gui=bold
hi doxygenTag guifg=#10B981 gui=bold
hi doxygenParam guifg=#F59E0B gui=italic

" Doxygen comment regions (multi-line)
syntax region doxygenComment start=/\/\*\*/ end=/\*\// contains=doxygenTag,doxygenParam

" Doxygen tags
syntax match doxygenTag /\*\s*@\w\+/ containedin=doxygenComment
syntax match doxygenTag /\*\s*\\\w\+/ containedin=doxygenComment

" Doxygen parameters
syntax match doxygenParam /\*\s*@\w\+\s\+\w\+/ containedin=doxygenComment
syntax match doxygenParam /\*\s*\\\w\+\s\+\w\+/ containedin=doxygenComment
