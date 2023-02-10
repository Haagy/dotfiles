if command -v terraform &> /dev/null
then
    alias tf='terraform'
fi

if command -v terragrunt &> /dev/null
then
    alias tg='terragrunt'
fi
