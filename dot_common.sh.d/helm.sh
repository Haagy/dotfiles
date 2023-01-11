if command -v helm &> /dev/null
then
    alias ht='helm template'

    source <(helm completion kind)
fi