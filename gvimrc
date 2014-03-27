" No audible bell
set vb

" Don't show scrollbars
set guioptions-=r
set guioptions-=L

" No toolbar
set guioptions-=T

" Use console dialogs
set guioptions+=c

" Local config
if filereadable($HOME . "/.gvimrc.local")
  source ~/.gvimrc.local
endif

