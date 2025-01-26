alias dotfiles-install="${HOME}/src/github.com/johnloy/dotfiles/install"

# Alias Editing
alias ae="vim ${HOME}/sh/aliases"           #alias edit
alias ar='source ${ENV_DIR}/sh/aliases.zsh' #alias reload

# Forward port 80 to 3000
alias portforward='sudo ipfw add 1000 forward 127.0.0.1,3000 ip from any to any 80 in'

# PS
alias psa="ps aux"
alias psg="ps aux | grep "

alias ka9='killall -9'
alias k9='kill -9'

# Common shell functions
alias less='less -r'
alias tf='tail -f'
alias l='less'
alias cl='clear'

# Show human friendly numbers and colors
alias df='df -h'
alias du='du -h -d 2'

alias ll='ls -alGh'
alias ls='ls -Gh'

# show me files matching "ls grep"
alias lsg='ll | grep'

# Moving around
alias cdb='cd -'
alias up2="cd ../.."
alias up3="cd ../../.."

alias lds="ls -l | grep ^drw"

# Zippin
alias gz='tar -zcvf'

alias lh='ls -alt | head' # see the last modified files

# jump to recently used items
# alias a='fasd -a' # any
# alias s='fasd -si' # show / search / select
# alias d='fasd -d' # directory
# alias f='fasd -f' # file
# alias z='fasd_cd -d' # cd, same functionality as j in autojump
# alias zz='fasd_cd -d -i' # interactive directory jump

# Git Aliases
alias gs='git status'
alias gcd='cd $(git repo-root)'
alias gstsh='git stash'
alias gst='git stash'
alias gsp='git stash pop'
alias gsa='git stash apply'
alias gsh='git show'
alias gshw='git show'
alias gshow='git show'
alias gi='vim .gitignore'
alias gcm='git ci -m'
alias gcim='git ci -m'
alias gci='git ci'
alias gco='git co'
alias gcp='git cp'
alias ga='git add -A'
alias guns='git unstage'
alias gunc='git uncommit'
alias gm='git merge'
alias gms='git merge --squash'
alias gam='git amend --reset-author'
alias grv='git remote -v'
alias grr='git remote rm'
alias grad='git remote add'
alias gr='git rebase'
alias gra='git rebase --abort'
alias ggrc='git rebase --continue'
alias gbi='git rebase --interactive'
alias gl='git l'
alias glg='git l'
alias glog='git l'
alias co='git co'
alias gf='git fetch'
alias gfch='git fetch'
alias gd='git diff'
alias gb='git b'
alias gbd='git b -D -w'
alias gdc='git diff --cached -w'
alias gpub='grb publish'
alias gtr='grb track'
alias gpl='git pull'
alias gplr='git pull --rebase'
alias gpm='git pull origin master'
alias gps='git push'
alias gpsh='git push'
alias gnb='git nb' # new branch aka checkout -b
alias grs='git reset'
alias grsh='git reset --hard'
alias gcln='git clean'
alias gclndf='git clean -df'
alias gclndfx='git clean -dfx'
alias gsm='git submodule'
alias gsmi='git submodule init'
alias gsmu='git submodule update'
alias gt='git t'
alias gbg='git bisect good'
alias gbb='git bisect bad'
alias gum='gco master && gf origin && gpm'
alias sha='git rev-parse HEAD'
# Todo: make this a function
# alias gitroot="echo $(git rev-parse --show-toplevel)"
alias repopath='echo `git remote -v | grep fetch` | sed "s/^[^ ]* [^:]*:\(.*\)\.git (fetch)/\1/g"'
alias gho='hub browse `repopath` commits/`sha`'
alias gcb='git symbolic-ref --short HEAD'

# https://coderwall.com/p/up1qma/git-remove-local-branches-not-on-remote
alias gprunebranches='git branch -r | awk "{print $1}" | egrep -v -f /dev/fd/0 <(git branch -vv | grep origin) | awk "{print $1}" | xargs git branch -d'

alias copylast='fc -ln -1 | awk '\''{$1=$1}1'\'' ORS='\'''\'' | pbcopy'
alias ls-repos='ghq list -p'
alias ls-repos-gh='ls-repos | egrep "\/github.com\/"'
alias ls-repos-me='ls-repos | grep '
alias ls-repos-template='ls -1 ~/src/github.com/johnloy | grep "\-template"'
# alias ls-repos-template='ls -1 ~/src/github.com/johnloy | grep "\-template"'
alias ls-repos-play='ls -1 ~/src/github.com/johnloy | grep "\-play"'
alias ls-repos-my='ls -1 ~/src/github.com/johnloy | grep "my\-"'
alias ghh="open \`git remote -v | grep git@github.com | grep fetch | head -1 | cut -f2 | cut -d' ' -f1 | sed -e's/:/\//' -e 's/git@/http:\/\//'\`"
