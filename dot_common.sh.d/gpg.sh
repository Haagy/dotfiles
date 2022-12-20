if command -v gpg &> /dev/null
then
    export GPG_TTY=$(tty)
fi
