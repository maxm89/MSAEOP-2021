_coffe_completion() {
    COMPREPLY=( $( env COMP_WORDS="${COMP_WORDS[*]}" \
                   COMP_CWORD=$COMP_CWORD \
                   _COFFE_COMPLETE=complete $1 ) )
    return 0
}

complete -F _coffe_completion -o default coffe;
