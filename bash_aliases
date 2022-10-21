# Navigation and use of linux
alias 'cd..'='cd ..'
alias '..'='cd ..'
alias lr='ls -R'
alias llr='ll -R'
alias ll='ls -lF'
alias lll='ls -alF'
alias le='ls --sort=extension'
alias lle='ll --sort=extension'
alias lt='ls --sort=time'
alias llt='ll --sort=time'
alias llf='ls -alrShF'
alias rd=rmdir
alias md=mkdir
alias j=jobs
alias :q=exit
alias reloadBash="source ~/.bashrc"
alias swapReload="sudo swapoff -a && sudo swapon -a"
alias promptOneLine='export PS1=$PS_ONELINE'
alias promptMultiLine='export PS1=$PS_MUTLILINE'

# Program
alias monitor=gnome-system-monitor
alias vless='vim -u /usr/share/vim/vim73/macros/less.vim'
alias iconvutf8='iconv -f Latin1 -t UTF-8 '
alias bd=". bd -s"
alias k='kubectl' # Load completion for this alias in bashrc
alias youtube-mp3='youtube-dl --extract-audio --audio-format mp3 --audio-quality 0'
alias lg='lazygit'
alias ark=arkade
alias helmfile='helmfile -i'

[ -x "$(command -v bat)" ] && alias cat='bat --paging=never'

## Improved compression
# http://sebsauvage.net/wiki/doku.php?id=linux-vrac
alias gzip='pigz'
alias bzip2='pbzip2'

#Dropox Status
alias dst='dropbox status'
#alias dfst='dropbox filestatus'
alias dfst='dropbox filestatus | grep 'syncing''

# Development
alias gccComp='gcc -Wall -Werror -ansi -pedantic'
alias gccThreadComp='gcc -Wall -Werror -ansi -pedantic -lpthread'
alias gccOpenComp='gcc -Wall -Werror -ansi -pedantic -D_XOPEN_SOURCE -D_SVID_SOURCE'

# Git
alias gst='git status'
alias glg='git lg'
alias gdf='git diff'
alias gdiff='git diff'

# Maven Alias
alias mcp='mvn clean package'
alias mci='mvn clean install'

# Miscellaneous
alias dotfiles='cd ~/dotfiles'
alias vdotfiles='vim ~/dotfiles'

alias grepJavaR='grep -R --include "*.java"'
alias grepC='grep --color=always'
alias grepTs='grep -R --include "*.ts"'
alias emacss='emacs -nw'
alias tarx='find . -name \*.t\*gz -exec tar xvf {} \;'
alias ni='nice -n 19 ionice -c3'
alias elsIndices='http "localhost:9200/_cat/indices?v&s=index"'

alias wotgobblemem='ps -o time,ppid,pid,nice,pcpu,pmem,user,comm -A | sort -r -n -k 6 | head -15'
alias wotgobbleproc='ps -o time,ppid,pid,nice,pcpu,pmem,user,comm -A | sort -r -n -k 5 | head -15'

alias 'conf_starship'='vim ~/.config/starship.toml'

# cd improvment
function cdls { cd "$@" && ls;}
function cdll { cd "$@" && ll;}

dockerRemoveImages() {
    docker rmi $(docker images | grep $1 | awk '{print $3}')
}

dockerStopAndRm() {
    docker stop $1 && docker rm $1
}

if [ -x ~/Software/bin/exa ]; then
    alias lr='exa -R'
    alias llr='exa -RlF'
    alias ll='exa -l -g --icons --sort type'
    alias lll='exa -alFg --icons --sort type'
    alias le='exa --sort=extension'
    alias lle='ll --sort=extension'
    alias lt='exa --sort=time'
    alias llt='ll --sort=time'
fi