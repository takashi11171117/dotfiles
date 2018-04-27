## 管理フォルダ作成
```
$ cd ~/
$ mkdir dotfiles
```

## クローン
```
$ cd ~/
$ git clone https://github.com/takashi11171117/dotfiles.git
```

## シンボリックを貼る
```
$ ln -sf ~/dotfiles/.vimrc ~/.vimrc
$ ln -sf ~/dotfiles/colors ~/.vim
$ ln -sf ~/dotfiles/ftdetect ~/.vim
$ ln -sf ~/dotfiles/indent ~/.vim
```
