" Plug init
call plug#begin('~/.vim/plugged')

" Autocompletion
Plug 'Valloric/YouCompleteMe'

" Unix utilities
Plug 'tpope/vim-eunuch'

" Assyncronous linting
Plug 'w0rp/ale'
let g:ale_linters = {'rust': ['cargo']}

" Language client support
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

" Rust language support
Plug 'rust-lang/rust.vim'
let g:rustfmt_autosave = 1

" Go language support
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'stamblerre/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }

" LanguageClient enhancements
" Showing function signature and inline doc.
Plug 'Shougo/echodoc.vim'

" Fuzzy finder
Plug 'airblade/vim-rooter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'ncm2/ncm2'

" Completion plugins
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-tmux'
Plug 'ncm2/ncm2-path'

" Initialize plugin system
call plug#end()

" show relative line number
set relativenumber

" Permanent undo
set undodir=~/.vimold
set undofile

" Shortcuts

"Open fzf menu
map <C-p> :Files<CR>

" Open ripgrep menu
map <C-o> :Rg<CR>