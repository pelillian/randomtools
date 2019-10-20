if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Remember that because you didn't want to have to separately clone all your
" plugins, you just pulled the code and deleted the .git folders in each of
" the plugin folders. This means you have to manually update your plugins by
" downloading the code & replacing it. If you download a bunch more plugins
" you should probably fix this.

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
" Vim HardTime
Plug 'takac/vim-hardtime'
Plug 'tpope/vim-sleuth'
call plug#end()

syntax on
set number

set background=dark
colorscheme gruvbox
hi vertsplit ctermfg=238 ctermbg=235
hi LineNr ctermfg=237
hi StatusLine ctermfg=235 ctermbg=245
hi StatusLineNC ctermfg=235 ctermbg=237
hi Search ctermbg=58 ctermfg=15
hi Default ctermfg=1
hi clear SignColumn
hi SignColumn ctermbg=235
hi GitGutterAdd ctermbg=235 ctermfg=245
hi GitGutterChange ctermbg=235 ctermfg=245
hi GitGutterDelete ctermbg=235 ctermfg=245
hi GitGutterChangeDelete ctermbg=235 ctermfg=245
hi EndOfBuffer ctermfg=237 ctermbg=235

set statusline=%=&P\ %f\ %m
set fillchars=vert:\ ,stl:\ ,stlnc:\
set laststatus=2
set noshowmode

set timeoutlen=1000 ttimeoutlen=10
set nojoinspaces

set autoread

inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

:set number relativenumber
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

" CtrlSpace plugin
set hidden
set nocompatible
set runtimepath^=~/.vim/vim-ctrlspace
let g:CtrlSpaceDefaultMappingKey = "<space> "
let g:CtrlSpaceUseUnicode = 0
let g:ctrlspace_save_workspace_on_exit = 1
let g:ctrlspace_save_workspace_on_switch = 1

set mouse=
set ttymouse=

" w!! writes to file even if we opened without sudo
cmap w!! w !sudo tee > /dev/null %

:map <S-z><S-z> <Nop>

set visualbell

" Keep cursor in middle
set scrolloff=99999
set scroll=10
nnoremap <C-U> 10k
nnoremap <C-D> 10j
" Alternate way of doing it
"nnoremap <C-U> 10kzz
"nnoremap <C-D> 10jzz
"nnoremap j jzz
"nnoremap k kzz
"nnoremap # #zz
"nnoremap * *zz
"nnoremap n nzz
"nnoremap N Nzz
"nnoremap gg ggzz
"nnoremap G Gzz
"nnoremap gj gjzz
"nnoremap gk gkzz

set sidescroll=1
set sidescrolloff=10

if has('persistent_undo')      "check if your vim version supports it
  set undofile                 "turn on the feature
  set undodir=$HOME/.vim/undo  "directory where the undo files will be stored
  endif

" Bash-like tab completion for filenames
set wildmode=longest,list

set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

set shiftwidth=0

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=0
" On pressing tab, insert 4 spaces
set expandtab

