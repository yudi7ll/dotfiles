# Custom functions for zsh

# rm function that calls trash with better completion
rm() {
    if [[ $# -eq 0 ]]; then
        command trash
    else
        command trash "$@"
    fi
}
