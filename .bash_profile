export PATH="$PATH:/usr/local/opt/openssl/bin"
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

export LANG=ja_JP.UTF-8
export LC_CTYPE=UTF-8

export PATH=$PATH:`npm bin -g`

#bashrc読み込み
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

export PATH="$HOME/.composer/vendor/bin:$PATH"
export PATH="/usr/local/Cellar/openssl/1.0.2m/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
export PATH="$PATH:/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/platform/google_appengine"
export GOPATH=$HOME/go
