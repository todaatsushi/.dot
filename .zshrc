export PATH=/opt/homebrew/bin:$PATH

for file in ~/.zsh_*; do
    case $file in
        (*history*);;
        (*sessions*);;
        (*) source $file;;
    esac
done

for file in ~/.bash_*; do
    case $file in 
        (*) source $file;;
    esac
done
