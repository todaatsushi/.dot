let b:ale_fixers = {
      \   'python': ['black', 'isort'],
      \   'javascript': ['prettier'],
      \   'typescript': ['prettier'],
      \   'typescriptreact': ['prettier'],
      \   'go': ['gofmt']
      \}

let g:ale_linters = {
      \   'python': ['flake8', 'pylint'],
      \   'javascript': ['eslint'],
      \   'typescript': ['eslint'],
      \   'typescriptreact': ['eslint'],
      \}

let b:ale_fix_on_save = 1
