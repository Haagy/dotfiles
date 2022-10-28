if command -v kubectl &> /dev/null
then
    export NS=default
    alias k='kubectl --namespace $NS'
    alias kg='kubectl --namespace $NS get'
    alias kga='kubectl get all --namespace $NS'
    alias kd='kubectl --namespace $NS describe'
    alias kdr='kubectl --namespace $NS --dry-run=client --output=yaml'

    source <(kubectl completion zsh)
fi
