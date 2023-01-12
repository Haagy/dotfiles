if command -v helm &> /dev/null
then
    export NS=default
    alias ht='helm template'
    alias hui='helm upgrade --install --create-namespace --namespace $NS'

    source <(helm completion kind)
fi