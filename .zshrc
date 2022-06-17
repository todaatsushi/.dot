export PATH=/opt/homebrew/bin:$PATH

# Python
export PATH="/usr/local/opt/python@3.7/bin:$PATH"

for file in ~/.zsh/.zsh_*; do
    case $file in
        (*history*);;
        (*sessions*);;
        (*profile*);;
        (*) source $file;;
    esac
done

# Go path settings
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# Lua
export PATH="$HOME/tools/lua-language-server/bin/:$PATH"

alias luamake=/Users/atsushitoda/tools/lua-language-server/3rd/luamake/luamake

export PATH="/Users/atsushitoda/.deta/bin:$PATH"
alias config='/usr/bin/git --git-dir=/Users/atsushitoda/.cfg/ --work-tree=/Users/atsushitoda'
