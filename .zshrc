for file in ~/.zsh/.zsh_*; do
    case $file in
        (*history*);;
        (*sessions*);;
        (*profile*);;
        (*) source $file;;
    esac
done
