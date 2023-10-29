# nvm-windows-auto-version-switching
`.nvmrc`を見て、Node.jsのバージョンを自動で切り替える

# 使用条件
- OSはWindows
- [Git Bash](https://gitforwindows.org/)を使用している
- [nvm-windows](https://github.com/coreybutler/nvm-windows/releases)を使用している

# インストール方法
1. ホームディレクトリに`.bashrc`を作成する
1. `.bashrc`に[コード](https://github.com/yoshi-68/nvm-auto-switching-windows/blob/main/.bashrc)を記述する

# 動作
- cd先に`.nvmrc`があれば、自動で`nvm use`を使用してNode.jsのバージョンを切り替える
- cd先に`.nvmrc`が無ければ何もしない
```
# .nvmrc
20.9.0
```
