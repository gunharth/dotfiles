# Git
alias ga="git add"
alias gaa="git add ."
alias gc="git commit -m"
alias gp="git push"
alias gs="git status"
alias gl="git log"
alias nah="git reset --hard && git clean -df"

#homestead
alias hu="homestead up"
alias hh="homestead halt"
alias hs="homestead ssh"

# Laravel artisan
alias a="php artisan"

# Valet switch php version
alias vphp71="brew unlink php56 && brew link php71 && valet stop && valet start"
alias vphp56="brew unlink php71 && brew link php56 && valet stop && valet start"

#flushDNS
alias flushdns="sudo killall -HUP mDNSResponder"
