if command -v kind &> /dev/null
then
    export KIND_EXPERIMENTAL_PROVIDER=podman
    source <(kind completion zsh)
fi