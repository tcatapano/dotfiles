"No compatibility mode
set nocompatible

"Fix problem where vim starts in REPLACE mode
"See https://www.reddit.com/r/bashonubuntuonwindows/comments/ijys54/has_anyone_else_started_seeing_vim_open_in/
set t_u7=

"Show command keystrokes
set showcmd

"Line numbers
set number

"Tab settings
set shiftwidth=4
set softtabstop=0
set tabstop=4
set autoindent
set smartindent
set expandtab

autocmd FileType make setlocal noexpandtab
autocmd FileType python setlocal tabstop=4 autoindent smartindent

" My settings when editing *.txt files
"   - automatically indent lines according to previous lines
"   - replace tab with 8 spaces
"   - when I hit tab key, move 2 spaces instead of 8
"   - wrap text if I go longer than 76 columns
"   - check spelling
autocmd FileType text setlocal autoindent expandtab softtabstop=2 textwidth=76 spell spelllang=en_us

" Prepend ~/.backup to backupdir so that Vim will look for that directory
" before littering the current dir with backups.
" You need to do "mkdir ~/.backup" for this to work.
set backupdir^=~/.backup

" Also use ~/.backup for swap files. The trailing // tells Vim to incorporate
" full path into swap file names.
set dir^=~/.backup//

" Ignore case when searching
" - override this setting by tacking on \c or \C to your search term to make
"   your search always case-insensitive or case-sensitive, respectively.
set ignorecase

"Turn on syntax highlighting
syntax on

"Search highlighting WHILE search but not after
set incsearch

"Search highlighting AFTER search
set hlsearch

"Allow mouse scrolling and such
set mouse=a

"Color scheme
colorscheme slate

"Custom keybindings
noremap <C-Up> 5k
noremap <C-Down> 5j

"Open split panes to right and bottom
set splitright
set splitbelow
