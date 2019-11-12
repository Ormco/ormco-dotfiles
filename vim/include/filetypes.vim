""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Settings for file types
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Automatic commands
" if has("autocmd")
" 	" Enable file type detection
" 	filetype on
" 	" Treat .json files as .js
" 	autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
" 	" Treat .md files as Markdown
" 	autocmd BufNewFile,BufRead *.md setlocal filetype=markdown
"   " Jump to the last position
"   au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
" endif

" New files:
au BufNewFile,BufRead *.py
      \set tabstop=4
      \set softtabstop=4
      \set shiftwidth=4
      \set textwidth=79
      \set colorcolumn=+1
      \set expandtab
      \set autoindent
      \set fileformat=unix

augroup Shebang
  autocmd BufNewFile *.awk 0put =\"#!/usr/bin/awk -f\<nl>\"|$
  autocmd BufNewFile *.bash 0put =\"#!/usr/bin/env bash \<nl>\"|$
  autocmd BufNewFile *.\(c\|h\) 0put =\"//\<nl>// \".expand(\"<afile>:t\").\" -- \<nl>//\<nl>\"|2|start!
  autocmd BufNewFile *.\(cc\|hh\) 0put =\"//\<nl>// \".expand(\"<afile>:t\").\" -- \<nl>//\<nl>\"|2|start!
  autocmd BufNewFile *.\(cpp\|hpp\) 0put =\"//\<nl>// \".expand(\"<afile>:t\").\" -- \<nl>//\<nl>\"|2|start!
  autocmd BufNewFile *.js 0put =\"#!/usr/bin/env node\<nl>\"|$
  autocmd BufNewFile *.lua 0put =\"#!/usr/bin/env lua\<nl>\"|$
  autocmd BufNewFile *.make 0put =\"#!/usr/bin/make -f\<nl>\"|$
  autocmd BufNewFile *.php 0put =\"#!/usr/bin/env php\<nl>\"|$
  autocmd BufNewFile *.pl 0put =\"#!/usr/bin/env perl\<nl>\"|$
  autocmd BufNewFile *.py 0put =\"#!/usr/bin/env python\<nl># -*- coding: utf-8 -*-\<nl>\"|$
  autocmd BufNewFile *.rb 0put =\"#!/usr/bin/env ruby\<nl># -*- coding: None -*-\<nl>\"|$
  autocmd BufNewFile *.sed 0put =\"#!/usr/bin/env sed\<nl>\"|$
  autocmd BufNewFile *.sh 0put =\"#!/usr/bin/env sh\<nl>\"|$
  autocmd BufNewFile *.tex 0put =\"%&plain\<nl>\"|$
  autocmd BufNewFile *.zsh 0put =\"#!/usr/bin/env zsh\<nl>\"|$
augroup END
