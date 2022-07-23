## Dependencies
*  `brew install ripgrep`
*  `brew install fd`

### LSP
To run nvim LSP, install language servers locally.

#### Install packer
```
git clone https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/opt/packer.nvim
```

#### LSP installers:
- Python - Pyright (npm i -g pyright)
- TypeScript - Tsserver (npm i -g typescript tsserver)
- [Go - gopls](https://pkg.go.dev/golang.org/x/tools/gopls#readme-installation)
- [Lua - Lua language server](https://jdhao.github.io/2021/08/12/nvim_sumneko_lua_conf/)

Run `TSInstall {language}` to enable treesitter syntax highighting
