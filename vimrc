" Use Vim settings, rather then Vi settings. This setting must be as early as
" possible, as it has side effects.
set nocompatible

" Set map leader
let mapleader = ","

" Set default highlight when searching
set hlsearch

" I dont want backups.
set nobackup
set nowritebackup
set noswapfile
set history=50
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set incsearch     " do incremental searching
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

filetype plugin indent on

set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab
set shell=/usr/local/bin/zsh

" Numbers
set number
set numberwidth=5

color jellybeans

" Add Rails, Fugitive, and RVM info to statusline
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%{rbenv#statusline()}%=%-14.(%l,%c%V%)\ %P

" map to bufexplorer
nnoremap <C-B> :BufExplorer<cr>
let g:bufExplorerShowRelativePath=1

" Disable Syntastic for SASS/SCSS
let g:syntastic_disabled_filetypes = ['sass', 'scss']

" Disable persisting yankring
let g:yankring_persist=0

" Set Font
set guifont=PanicSans:h15

" Get off my lawn (make vim keys, not war)
" nnoremap <Left> :echoe "Use h"<CR>
" nnoremap <Right> :echoe "Use l"<CR>
" nnoremap <Up> :echoe "Use k"<CR>
" nnoremap <Down> :echoe "Use j"<CR>

" vim-rspec mappings
nnoremap <Leader>t :call RunCurrentSpecFile()<CR>
nnoremap <Leader>s :call RunNearestSpec()<CR>
nnoremap <Leader>l :call RunLastSpec()<CR>

" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

" Create directional shortcuts for moving among between splits
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-l> <C-W>l
nmap <C-h> <C-W>h

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Easier window resizing
if bufwinnr(1)
  map + <C-W>+
  map - <C-W>-
end

" Remap jj or jk or to be the same as Esc to leave Insert mode.
imap ii <Esc>

" Tagbar
nmap <F8> :TagbarToggle<CR>

" NERDTree {{{
let NERDTreeDirArrows = 0
let NERDChristmasTree = 1
let NERDTreeHighlightCursorline = 1
let NERDTreeShowBookmarks = 1
let NERDTreeIgnore = ['\.pyc$', '\.pyo$', '\.rbc$', '\.class$', '\.o', '\~$']
let NERDTreeChDirMode = 2
nmap <F2> :NERDTreeToggle<CR>
map nt :NERDTreeToggle<CR>

" NERDCommenter
let NERDSpaceDelims = 1
let NERDRemoveAltComs = 0

" Syntastic
let g:syntastic_enable_signs = 1
let g:syntastic_quiet_messages = {'level': 'warnings'}
let g:syntastic_auto_loc_list = 2

" Gist
let g:gist_clip_command = 'pbcopy'


" Mouse
" ======

" Send more characters for redraws
set ttyfast

" Enable mouse use in all modes
set mouse=a

" Set this to the name of your terminal that supports mouse codes.
" Must be one of: xterm, xterm2, netterm, dec, jsbterm, pterm
set ttymouse=xterm2

augroup vimrcEx
  autocmd!

  " automatically remove trailing whitespace before write
  function! StripTrailingWhitespace()
    normal mZ
    %s/\s\+$//e
    if line("'Z") != line(".")
      echo "Stripped whitespace\n"
    endif
    normal `Z
  endfunction
  autocmd BufWritePre *.bldr,*.md,*.coffee,*.rake,*.js,*.rb,*.css,*.sass,*.scss,*.haml,*.erb,*.cpp,*.hpp,*.i :call StripTrailingWhitespace()

  " Spell check Markdown and HTML
  autocmd FileType html,markdown setlocal spelllang=en_us spell

  " Automatically wrap at 80 characters for Markdown
  autocmd BufRead,BufNewFile *.md setlocal textwidth=80

  " Set syntax highlighting for specific file types
  autocmd BufRead,BufNewFile *.md set filetype=markdown

  " Open NERDTree if no file specified
  autocmd vimenter * if !argc() | NERDTree | endif

  " hint to keep lines short
  if exists('+colorcolumn')
    set colorcolumn=80
  else
    au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
  endif

augroup END

augroup tech_words_to_avoid
  autocmd!
  " Highlight words to avoid in tech writing
  " =======================================
  "
  "   obviously, basically, simply, of course, clearly,
  "   just, everyone knows, However, So, easy

  "   http://css-tricks.com/words-avoid-educational-writing/

  highlight TechWordsToAvoid ctermbg=red ctermfg=white
  match TechWordsToAvoid /\cobviously\|basically\|simply\|of\scourse\|clearly\|just\|everyone\sknows\|however\|so,\|easy/
  autocmd BufWinEnter * match TechWordsToAvoid /\cobviously\|basically\|simply\|of\scourse\|clearly\|just\|everyone\sknows\|however,\|so,\|easy/
  autocmd InsertEnter * match TechWordsToAvoid /\cobviously\|basically\|simply\|of\scourse\|clearly\|just\|everyone\sknows\|however,\|so,\|easy/
  autocmd InsertLeave * match TechWordsToAvoid /\cobviously\|basically\|simply\|of\scourse\|clearly\|just\|everyone\sknows\|however,\|so,\|easy/
  autocmd BufWinLeave * call clearmatches()
augroup END

" Mapping capital w and q
:command WQ wq
:command Wq wq
:command Qa qa
:command W w
:command Q q

" Turn on indent guides by default
let g:indent_guides_enable_on_vim_startup = 1

" Local config
if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif
