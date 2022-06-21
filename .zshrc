for file in ~/.zsh/.zsh_*; do
    case $file in
        (*history*);;
        (*sessions*);;
        (*profile*);;
        (*) source $file;;
    esac
done

alias config='/usr/bin/git --git-dir=/Users/atsushitoda/.cfg/ --work-tree=/Users/atsushitoda'
