export PATH="$PATH:/usr/local/opt/openssl/bin"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export LANG=ja_JP.UTF-8
export LC_CTYPE=UTF-8

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

export PATH=$PATH:`npm bin -g`

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

#bashrc読み込み
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

export PATH="$HOME/.composer/vendor/bin:$PATH"
export PATH="/usr/local/Cellar/openssl/1.0.2m/bin:$PATH"

export PATH="/usr/local/opt/php@7.1/bin:$PATH"
export PATH="/usr/local/opt/php@7.1/sbin:$PATH"
