if command -v terraform &> /dev/null
then
    alias tf='terraform'
    export AWS_PROFILE=wepf
fi

if command -v terragrunt &> /dev/null
then
    alias tg='terragrunt'
fi
