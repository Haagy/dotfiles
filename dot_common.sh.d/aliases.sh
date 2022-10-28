case "$(uname)" in
    "Darwin")
        alias l.='ls -G -d .*'
        alias ll='ls -G -l'
        alias lla='ls -G -la'
        alias la='ls -G -a'
        alias top='top -o cpu'
        alias sst='ss -tulpn'
        ;;
    "Linux")
        alias l.='ls -d .* --color=auto'
        alias ll='ls -l --color=auto'
        alias lla='ls -la --color=auto'
        alias la='ls -a --color=auto'
        alias sst='ss -tulpn'
esac
