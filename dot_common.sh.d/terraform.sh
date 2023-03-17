if command -v terraform &> /dev/null
then
    alias tf='terraform'
    terraform --install-autocomplete
    export AWS_PROFILE=wepf3
fi

if command -v terragrunt &> /dev/null
then
    alias tg='terragrunt'
fi
