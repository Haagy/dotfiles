if [[ -f "$HOME/.ssh/id_ed25519" ]]; then
  case "$(uname)" in
      "Darwin")
          eval "$(ssh-agent -s)"
          ssh-add --apple-use-keychain ~/.ssh/id_ed25519
          ;;
      "Linux")
          eval "$(ssh-agent -s)"
          ssh-add ~/.ssh/id_ed25519
  esac
fi
