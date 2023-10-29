cd() {
  builtin cd "$@"

  if [ -f ".nvmrc" ]; then
    # 現在のNVMのバージョンを取得
    current_nvm_version=$(nvm current | sed 's/^v//')
    # .nvmrcが存在する場合、その中のバージョンを読み取る
    nvm_version=$(cat .nvmrc)

    if [ "$current_nvm_version" != "$nvm_version" ]; then
      # バージョンが違う場合、nvm useコマンドで切り替える
      nvm use $nvm_version || true
    fi
  fi
}
