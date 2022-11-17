if [[ -d "${HOME}/.ssh/" ]]; then
    COUNT_KEYS=$(find "${HOME}/.ssh" -type f -maxdepth 1 -name "*.pem")
    if [[ "${#COUNT_KEYS[@]}" != 0 ]]; then
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
    fi
fi
