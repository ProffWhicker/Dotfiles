" START
let g:startify_custom_header = [
    \'                                              ███                   ',
    \'                                             ░░░                    ',
    \'    ████████    ██████   ██████  █████ █████ ████  █████████████    ',
    \'   ░░███░░███  ███░░███ ███░░███░░███ ░░███ ░░███ ░░███░░███░░███   ',
    \'    ░███ ░███ ░███████ ░███ ░███ ░███  ░███  ░███  ░███ ░███ ░███   ',
    \'    ░███ ░███ ░███░░░  ░███ ░███ ░░███ ███   ░███  ░███ ░███ ░███   ',
    \'    ████ █████░░██████ ░░██████   ░░█████    █████ █████░███ █████  ',
    \'   ░░░░ ░░░░░  ░░░░░░   ░░░░░░     ░░░░░    ░░░░░ ░░░░░ ░░░ ░░░░░   ',
    \''
\]

" PLUGINS
call plug#begin('~/.config/nvim/plugged')

Plug 'Raimondi/delimitMate'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'Yggdroot/indentLine'
Plug 'mhinz/vim-startify'

call plug#end()

" CONFIG
set nu rnu
set noshowmode
set termguicolors
set encoding=utf-8

set splitbelow
set splitright

" BUFFER
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=120
set expandtab
set autoindent
set fileformat=unix

au BufNewFile,BufRead *.html,*.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set textwidth=120 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

" COLOR SCHEME
colorscheme palenight
let g:palenight_terminal_italics=1
hi Normal ctermbg=none guibg=none

" NORMAL MODE KEYMAP
nmap <C-b> :NERDTreeToggle <cr>
nmap <C-s> :w <cr>

" INSERT MODE KEYMAP
imap <C-b> <esc> :NERDTreeToggle <cr>
imap <C-s> <esc> :w <cr> i
imap qq <esc>

" STARTIFY
let g:startify_lists = [
        \ { 'type': 'bookmarks', 'header': ['   Bookmarks']},
\ ]

let g:startify_bookmarks = [
        \ {'x': '~/Documents/notes.md'},
        \ {'z': '~/.config/fish/config.fish'},
        \ {'c': '~/.config/i3/config'},
        \ {'n': '~/.config/nvim/init.vim'},
\ ]
