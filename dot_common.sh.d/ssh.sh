if [[ ! -d "${HOME}/.ssh/" ]]; then
    exit
fi
COUNT_KEYS=$(find "${HOME}/.ssh" -type f -maxdepth 1 -name "*.pem")
if [[ "${#COUNT_KEYS[@]}" == 0 ]]; then
    exit
fi
eval "$(ssh-agent -s)"
case "$(uname)" in
    "Darwin")
        for KEY in "${HOME}"/.ssh/*.pem; do
            ssh-add --apple-use-keychain "$KEY"
        done
        ;;
    "Linux")
        for KEY in "${HOME}"/.ssh/*.pem; do
            ssh-add "$KEY"
        done
        ;;
esac
