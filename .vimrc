bundle settings {{{
if has('vim_starting')
  set nocompatible
  "
  if !isdirectory(expand("~/.vim/bundle/neobundle.vim/"))
    echo "install neobundle..."
    "
    :call system("git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim")
  endif
  "
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#begin(expand('~/.vim/bundle'))
let g:neobundle_default_git_protocol='https'

"
NeoBundleFetch 'Shougo/neobundle.vim'

"
NeoBundleCheck
call neobundle#end()
filetype plugin indent on
" 
set t_Co=256
syntax on

NeoBundle 'Shougo/neosnippet'
NeoBundle 'scrooloose/syntastic'
NeoBundle "kana/vim-smartinput"
NeoBundle "cohama/vim-smartinput-endwise"

call smartinput_endwise#define_default_rules()
