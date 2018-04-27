#カレントディレクトリ
alias f="open ."
alias desk="open /Users/whitespaceEI/Desktop"
. /usr/local/etc/profile.d/z.sh

#翻訳
alias t-ej="trans {en=ja}"
alias t-je="trans {ja=en}"

#辞書
dic () {
  w3m "http://ejje.weblio.jp/content/$1" | grep "用例"
}

wiki () {
  curl -s "https://ja.wikipedia.org/w/api.php?action=query&titles=$1&prop=revisions&format=xml&utf8=&redirects=&rvprop=content" | sed ':a;N;$!ba;s/\n//g' | xmllint --format --encode utf-8 - | less
}

#逆引き
cdf () {
	target=`osascript -e 'tell application "Finder" to if (count of Finder windows) > 0 then get POSIX path of (target of front Finder window as text)'`
	if [ "$target" != "" ]
	then
			cd "$target"
			pwd
	else
			echo 'No Finder window found' >&2
	fi
}

brew-cask-upgrade(){
  for app in $(brew cask list);
  do
    local latest="$(brew cask info "${app}" | awk 'NR==1{print $2}')";
    local versions=($(ls -1 "/usr/local/Caskroom/${app}/.metadata/"));
    local current=$(echo ${versions} | awk '{print $NF}');
    if [[ "${latest}" = "latest" ]];
    then echo "[!] ${app}: ${current} == ${latest}";
      [[ "$1" = "-f" ]] && brew cask install "${app}" --force; continue;
    elif
      [[ "${current}" = "${latest}" ]]; then continue;
    fi;
    echo "[+] ${app}: ${current} -> ${latest}";
    brew cask uninstall "${app}" --force;
    brew cask install "${app}";
  done;
}

#lsコマンド
alias ls='ls -G'
alias ll='ls -lG'
alias la='ls -laG'

#ホームディレクトリ

#bash編集
alias abash='/Applications/Atom.app/Contents/MacOS/Atom ~/.bashrc'
alias sbash='source ~/.bashrc'
alias apbash='/Applications/Atom.app/Contents/MacOS/Atom ~/.bash_profile'
alias spbash='source ~/.bash_profile'
alias bh='cat ~/.bash_history'

#アプリケーション
alias a="/Applications/Atom.app/Contents/MacOS/Atom"
alias chrome='open -a "Google Chrome.app"'
alias safari='open -a "Safari.app"'
alias firefox='open -a "Firefox.app"'

#host
alias ahost='/Applications/Atom.app/Contents/MacOS/Atom /etc/hosts'

#javascript
alias js='osascript -l JavaScript'

alias pass='column -s, -t < ~/pass.csv | cat -n'
alias apass='/Applications/Atom.app/Contents/MacOS/Atom ~/pass.csv'

#docker
alias dp="docker ps"
alias dpa="docker ps -a"
alias de="docker exec -it"
alias dn="docker network"
alias dl="docker logs"
alias drmi="docker rmi $(sudo docker images -q)"
alias drm="docker rm $(sudo docker ps -a -q)"
alias dm="docker-machine"

#docker-compose
alias dcu="docker-compose up -d"
alias dcd="docker-compose down"
alias dcb="docker-compose build"

#vagrant
alias vh='vagrant halt'
alias vr='vagrant reload'
alias vs='vagrant ssh'
alias vu='vagrant up'
alias vd='vagrant destroy'
alias vp='vagrant provision'

#berks
alias bv='chef exec berks vendor cookbooks'

alias dfl='sudo cat /fluentd/log/docker.log'

alias bh='cat ~/.bash_history'
