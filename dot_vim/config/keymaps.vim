" Use `y` to copy to the system clipboard
nnoremap <expr> y (v:register == '"' ? '"+y' : 'y')
nnoremap <expr> Y (v:register == '"' ? '"+y$' : 'y$')
nnoremap <expr> yy (v:register == '"' ? '"+yy' : 'yy')
xnoremap <expr> y (v:register == '"' ? '"+y' : 'y')
xnoremap <expr> Y (v:register == '"' ? '"+Y' : 'Y')

" Use `p` to paste from the system clipboard
nnoremap <expr> p (v:register == '"' ? '"+p' : 'p')
nnoremap <expr> P (v:register == '"' ? '"+P' : 'P')
xnoremap <expr> p (v:register == '"' ? '"+p' : 'p')
xnoremap <expr> P (v:register == '"' ? '"+P' : 'P')

" Use `m` to cut (delete to system clipboard)
nnoremap <expr> m (v:register == '"' ? '"+d' : 'd')
nnoremap <expr> M (v:register == '"' ? '"+D' : 'D')
nnoremap <expr> mm (v:register == '"' ? '"+dd' : 'dd')
xnoremap <expr> m (v:register == '"' ? '"+d' : 'd')
xnoremap <expr> M (v:register == '"' ? '"+D' : 'D')

" Preserve original `m` (mark) command using `gm`
nnoremap gm m

" Show all marks with `gM`
nnoremap gM :marks<CR>

" Remap `H` to beginning of line, `L` to end of line
noremap H ^
noremap L $

" Use `U` to redo (opposite of undo)
nnoremap U <C-r>

" Use `Q` to toggle search highlight visibility
nnoremap <silent> Q :set hlsearch!<CR>

" Insert a new line below/above without entering insert mode
nnoremap go :call append(line("."), "")<CR>
nnoremap gO :call append(line(".") - 1, "")<CR>

" Use `S` for surround operator (requires surround plugin)
nmap S ys

" EasyMotion mappings
nmap s <Plug>(easymotion-sn)
xmap s <Plug>(easymotion-sn)
omap z <Plug>(easymotion-sn)

" ReplaceWithRegister mappings
nmap <expr> gr (v:register == '"' ? '"+<Plug>ReplaceWithRegisterOperator' : '<Plug>ReplaceWithRegisterOperator')
nmap <expr> gR (v:register == '"' ? '"+<Plug>ReplaceWithRegisterLine' : '<Plug>ReplaceWithRegisterLine')
xmap <expr> gr (v:register == '"' ? '"+<Plug>ReplaceWithRegisterVisual' : '<Plug>ReplaceWithRegisterVisual')

