# Git
alias ga="git add"
alias gaa="git add ."
alias gc="git commit -m"
alias gp="git push"
alias gs="git status"
alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gd="git diff"
alias nah="git reset --hard && git clean -df"

#homestead
alias hs='function __homestead() { (cd ~/Homestead && vagrant $*); unset -f __homestead; }; __homestead'

# Laravel artisan
alias a="php artisan"

# Valet switch php version
alias vphp71="brew unlink php56 && brew link php71 && valet stop && valet start"
alias vphp56="brew unlink php71 && brew link php56 && valet stop && valet start"

#flushDNS
alias flushdns="sudo killall -HUP mDNSResponder"
