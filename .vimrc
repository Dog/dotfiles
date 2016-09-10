" General Confiration
" .....................................
syntax on                " this is needed to see syntax
set background=dark      " makes it easier to read with black background
set ls=2                " allways show status line
set hlsearch            " highlight searches
set incsearch           " do incremental searching
set ruler               " show the cursor position all the time
set visualbell t_vb=  " turn off error beep/flash
set ignorecase        " ignore case while searching
set number            " put numbers on side
set ts=2                            " set the tabs to two spaces
set expandtab
set shiftwidth=2
set tabstop=2
set backspace=indent,eol,start
set completeopt=longest,menu,preview
set autoindent
set scrolloff=5               " keep at least 5 lines above/below
set sidescrolloff=5           " keep at least 5 lines left/right
set hidden                    " this will go along"
filetype plugin on
filetype plugin indent on
let mapleader = ","           " Remap leader to comma"
let base16colorspace=256

" Color Themes
" .....................................
colorscheme base16-default-dark

" GitGutter
" .....................................
let g:gitgutter_enabled = 1
let g:gitgutter_highlights = 1
let g:gitgutter_override_sign_column_highlight = 0

" Custom Mappings
" .....................................
map <right> <ESC>:bn<RETURN>
map <left> <ESC>:bp<RETURN>

" Control screen splits
map <Tab> <C-W>w
map <Bar> <C-W>v<C-W><Right>
map -     <C-W>s<C-W><Down>

" Easier pane navigation"
" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" Toggle Gundo
nnoremap <leader>u :GundoToggle<CR>
" Shortcut for Silver Searcher
nnoremap <leader>f :Ag
" F5 to delete all trailing whitespaces
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" Plug configuration
" .....................................
call plug#begin('~/.vim/plugged')
Plug 'kien/ctrlp.vim'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'fatih/vim-go'                     " https://github.com/fatih/vim-go
Plug 'majutsushi/tagbar'
Plug 'Valloric/YouCompleteMe'
Plug 'vim-airline/vim-airline'
Plug 'sjl/gundo.vim'
Plug 'rking/ag.vim'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'chriskempson/base16-vim'
Plug 'https://github.com/scrooloose/nerdtree'
Plug 'bronson/vim-trailing-whitespace'
Plug 'airblade/vim-gitgutter'
Plug 'rkitover/vimpager'
Plug 'edkolev/tmuxline.vim'
Plug 'christoomey/vim-tmux-navigator' " Seemless navigation between VIM and Tmux
Plug 'keith/tmux.vim' " Add syntax highlighting for *tmux.conf files
Plug 'lilydjwg/colorizer'
Plug 'vim-airline/vim-airline-themes'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'mattn/emmet-vim'
call plug#end()

" Turn on ESLint
" let g:syntastic_javascript_checkers = ['eslint']

" FileTypes
" .....................................
au BufRead,BufNewFile *.md set filetype=markdown

" Vim & Tmux
" .....................................
map <Esc>[B <Down>
if &term =~ '^screen'
  " tmux will send xterm-style keys when its xterm-keys option is on
  execute "set <xUp>=\e[1;*A"
  execute "set <xDown>=\e[1;*B"
  execute "set <xRight>=\e[1;*C"
  execute "set <xLeft>=\e[1;*D"
endif

" JSX in JS
" .....................................
let g:jsx_ext_required = 0

" Go Settings
" .....................................
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)

" NERDTree
" .....................................
" autocmd VimEnter * NERDTree " Auto-start nerdtree and move focus to main pane
" Auto-close nerdtree when closing primary file
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

autocmd VimEnter * wincmd p " Open help window on the left
autocmd FileType help wincmd L
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""' " Make CtrlP faster by using Ag

" CSS Color Configuraiton
" .....................................
let g:cssColorVimDoNotMessMyUpdatetime = 1

" Airline Configuration
" .....................................
let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers
let g:airline#extensions#tabline#fnamemod = ':t' " Show just the filename
let g:airline#extensions#branch#enabled = 1 " Enable branches
let g:airline_theme='base16'

" Status Line Configuration
" .....................................
let g:airline_powerline_fonts = 1
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set statusline+=%{fugitive#statusline()}

" Syntastic Configuration
" .....................................
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_error_symbol = '✗'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_warning_symbol = '»'
let g:syntastic_style_warning_symbol = '»'

" Color Changes
" .....................................
hi LineNr                    ctermfg=green   ctermbg=black
hi NERDTreeCWD               ctermfg=black
hi NERDTreeLink              ctermfg=cyan
hi NERDTreeExecFile          ctermfg=green
hi SyntasticStyleWarningSign ctermfg=yellow  ctermbg=black
hi SyntasticStyleErrorSign   ctermfg=red     ctermbg=black
hi SyntasticWarningSign      ctermfg=yellow  ctermbg=black
hi SyntasticErrorSign        ctermfg=red     ctermbg=black
hi SignColumn                ctermbg=black
hi GitGutterAdd              ctermfg=green   ctermbg=black
hi GitGutterChange           ctermfg=yellow  ctermbg=black
hi GitGutterDelete           ctermfg=red     ctermbg=black
hi GitGutterChangeDelete     ctermfg=blue    ctermbg=black
hi vertsplit                 ctermfg=green   ctermbg=green
hi Pmenu                                     ctermbg=238
hi clear SignColumn
