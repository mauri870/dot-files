" Set correct encoding
set encoding=utf-8

" show relative line number
set relativenumber

" Permanent undo
set undodir=~/.vimold
set undofile

" Enable modelines
set modelines=1

" Plug init
call plug#begin('~/.vim/plugged')

" Editorconfig support
Plug 'editorconfig/editorconfig-vim'

" Unix utilities
Plug 'tpope/vim-eunuch'

" Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Go fmt
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Clang Format
Plug 'rhysd/vim-clang-format'
autocmd FileType c,cpp ClangFormatAutoEnable 

" Fuzzy finder
let $FZF_DEFAULT_COMMAND = 'rg --files --hidden'
Plug 'airblade/vim-rooter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Terraform plugin
Plug 'hashivim/vim-terraform'

" Initialize plugin system
call plug#end()

" Shortcuts

"Open fzf menu
map <C-p> :Files<CR>

" Open ripgrep menu
map <C-o> :Rg<CR>

" Open Buffers
nmap <C-e> :Buffers<CR>

" Toggles between buffers
nnoremap <C-Space> <C-^>

" Clear last search pattern
nnoremap <CR> :noh<CR><CR>

