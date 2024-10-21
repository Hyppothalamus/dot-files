alias switch-java="sudo update-alternatives --config java"
alias apt="apt -y"
alias cat="bat"
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias ll="exa -la --icons"
alias ls="exa --icons"
alias emacs='emacsclient -c -a "emacs"'
alias neo='neo -D'
alias vim='nvim'
alias sudo='doas'
alias ..="cd .."
alias ...="cd ../.."

function cdls 
    cd $argv; ll
end

