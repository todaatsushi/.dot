export PATH=/opt/homebrew/bin:$PATH

for file in ~/.zsh_*; do
    case $file in
        (*history*);;
        (*sessions*);;
        (*profile*);;
        (*) source $file;;
    esac
done

for file in ~/.bash_*; do
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
