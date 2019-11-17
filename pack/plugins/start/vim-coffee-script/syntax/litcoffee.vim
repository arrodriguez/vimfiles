" Language:    CoffeeScript
" Maintainer:  Mick Koch <kchmck@gmail.com>
" URL:         http://github.com/kchmck/vim-coffee-script
" License:     WTFPL

" Bail if our syntax is already loaded.
if exists('b:current_syntax') && b:current_syntax == 'litcoffee'
  finish
endif

" Use markdown syntax as basis
runtime syntax/markdown.vim
unlet b:current_syntax

" Include coffee syntax as a group
syn include @coffee syntax/coffee.vim

" Region definition taken from markdown.vim
syn region markdownCodeBlock start="    \|\t" end="$" contained contains=@coffee,coffeeObject

" Fix for wrong coffeeObject highlighting. Not sure why it's needed
syn match coffeeObject /\<\u\w*\>/ display contained

if !exists('b:current_syntax')
  let b:current_syntax = 'litcoffee'
endif
