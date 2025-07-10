" Yank from the cursor to the end of line
noremap Y y$

" Map `H` to move to the beginning of the line, `L` to the end
noremap H ^
noremap L $

" Insert a new line without enter insert mode
nnoremap go :call append(line("."), "")<CR>
nnoremap gO :call append(line(".") - 1, "")<CR>

" Use `U` to redo
nnoremap U <C-r>

" Use `Q` to toggle search highlights
nnoremap <silent> Q :set hlsearch!<CR>

" Redirect cut/delete/change commands to use the black hole register (_)
nnoremap d "_d
xnoremap d "_d
nnoremap D "_D
nnoremap dd "_dd

nnoremap c "_c
xnoremap c "_c
nnoremap C "_C
nnoremap cc "_cc

nnoremap x "_x
xnoremap x "_x
nnoremap X "_X
xnoremap X "_X

" Remap `m` as cut (original `d`)
nnoremap m d
xnoremap m d
nnoremap M D
nnoremap mm dd

" Restore `m` (mark) functionality with `gm`
nnoremap gm m

" Show all marks
nnoremap gM :marks<CR>

" Surround
nmap S ys

" EasyMotion
nmap s <Plug>(easymotion-sn)
xmap s <Plug>(easymotion-sn)
omap z <Plug>(easymotion-sn)

" ReplaceWithRegister
nmap gr <Plug>ReplaceWithRegisterOperator
nmap gR <Plug>ReplaceWithRegisterLine
xmap gr <Plug>ReplaceWithRegisterVisual
