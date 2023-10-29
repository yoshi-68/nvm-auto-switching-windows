cd() {
  builtin cd "$@"
  current_nvm_version=$(nvm current | sed 's/^v//')

  if [ -f ".nvmrc" ]; then
    nvm_version=$(cat .nvmrc)

    if [ "$current_nvm_version" != "$nvm_version" ]; then
      nvm use $nvm_version || true
    fi
  elif [ -z "$nvmrc_path" ] && [ "$LEVEL" != "root" ]; then
    if [ "$current_nvm_version" != "20.9.0" ]; then
      nvm use 20.9.0 || true
    fi
  fi
}
