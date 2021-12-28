Copy into
~/.config/nvim/

Dependencies
*  `brew install ripgrep`
*  `brew install fd`
* `Node` needed for intellisense - check `CoC` docs for versions

For `semshi` syntax highlighting (system python I think):
* `python3 -m pip install --user neovim`
* `pip3 install pynvim`

After running `:PlugInstall`:
* `:UpdateRemotePlugins`

For intellisense, install using `coc-`:
`:CocInstall coc-pyright`
