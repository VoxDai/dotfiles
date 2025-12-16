" Auto install Vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'vim-scripts/argtextobj.vim'
Plug 'tpope/vim-commentary'
Plug 'easymotion/vim-easymotion'
Plug 'tommcdo/vim-exchange'
Plug 'machakann/vim-highlightedyank'
Plug 'chrisbra/matchit'
Plug 'dbakker/vim-paragraph-motion'
Plug 'unblevable/quick-scope'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'tpope/vim-surround'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
call plug#end()

" EasyMotion setting
let g:EasyMotion_do_mapping = 0 " Disable default mapping
let g:EasyMotion_smartcase = 1  " Enable smart case

" Argtextobj setting
let g:argtextobj_pairs = "[:],(:),<:>"

" vim-highlightedyank setting
let g:highlightedyank_highlight_duration = 300

" quick-scope setting
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
