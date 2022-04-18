let b:ale_fixers = {
      \   'python': ['black', 'isort'],
      \   'javascript': ['prettier'],
      \   'typescript': ['prettier'],
      \   'go': ['gofmt']
      \}

let g:ale_linters = {
      \   'python': ['flake8', 'pylint'],
      \   'javascript': ['eslint'],
      \   'typescript': ['eslint'],
      \}

let b:ale_fix_on_save = 1
