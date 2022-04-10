export PATH=/opt/homebrew/bin:$PATH
# Go path settings
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

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
