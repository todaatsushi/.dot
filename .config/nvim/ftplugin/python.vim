" Python comments
autocmd FileType apache setlocal commentstring=#\ %s

" Python syntax
let g:python_highlight_all = 1

" venv package opener
function! VirtualEnvSitePackagesFolder()
    " Try a few candidate Pythons to see which this virtualenv uses.
    for python in ["python3.7", "python3.8", "python3.9"]
        let candidate = $VIRTUAL_ENV . "/lib/" . python
        if isdirectory(candidate)
            return candidate . "/site-packages/"
        endif
    endfor

    return ""
endfunction

cnoremap %v <C-R>=VirtualEnvSitePackagesFolder()<CR>

" Formatting
" let b:ale_fixers = ['black', 'isort']
let b:ale_fixers = ['isort']
let b:ale_fix_on_save = 1

let g:ale_linters = {
      \   'python': ['flake8', 'pylint'],
      \   'javascript': ['eslint'],
      \}

" Python navigation
map <leader>ac <Plug>(PythonsenseOuterClassTextObject)
map <leader>ic <Plug>(PythonsenseInnerClassTextObject)
map <leader>af <Plug>(PythonsenseOuterFunctionTextObject)
map <leader>if <Plug>(PythonsenseInnerFunctionTextObject)
map <leader>ad <Plug>(PythonsenseOuterDocStringTextObject)
map <leader>id <Plug>(PythonsenseInnerDocStringTextObject)

map <leader>]] <Plug>(PythonsenseStartOfNextPythonClass)
map <leader>][ <Plug>(PythonsenseEndOfPythonClass)
map <leader>[[ <Plug>(PythonsenseStartOfPythonClass)
map <leader>[] <Plug>(PythonsenseEndOfPreviousPythonClass)
map <leader>]m <Plug>(PythonsenseStartOfNextPythonFunction)
map <leader>]M <Plug>(PythonsenseEndOfPythonFunction)
map <leader>[m <Plug>(PythonsenseStartOfPythonFunction)
map <leader>[M <Plug>(PythonsenseEndOfPreviousPythonFunction)

map <leader>g <Plug>(PythonsensePyWhere)

" Housekeeping
inoremap <leader>ipdb import ipdb; ipdb.set_trace()
inoremap <leader>noqa # flake8: noqa<esc>o
inoremap <leader>anno from __future__ import annotations<esc>o
inoremap <leader>tych from typing import TYPE_CHECKING<esc>o
inoremap <leader>tymo if TYPE_CHECKING:<esc>o

"Semshi
nmap <silent> <leader>rr :Semshi rename<CR>

nmap <silent> <Tab> :Semshi goto name next<CR>
nmap <silent> <S-Tab> :Semshi goto name prev<CR>

nmap <silent> <leader>c :Semshi goto class next<CR>
nmap <silent> <leader>C :Semshi goto class prev<CR>

nmap <silent> <leader>f :Semshi goto function next<CR>
nmap <silent> <leader>F :Semshi goto function prev<CR>

nmap <silent> <leader>gu :Semshi goto unresolved first<CR>
nmap <silent> <leader>gp :Semshi goto parameterUnused first<CR>

nmap <silent> <leader>ee :Semshi error<CR>
nmap <silent> <leader>ge :Semshi goto error<CR>
