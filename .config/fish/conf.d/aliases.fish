alias switch-java="sudo update-alternatives --config java"
alias apt="apt -y"
alias cat="batcat"
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias ll="exa -la --icons"
alias ls="exa --icons"

function cdls 
    cd $argv; ll
end
