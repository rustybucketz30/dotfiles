
# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '


# ALIASES
alias c='clear'
alias nf='neofetch'
alias pf='pfetch'
alias ls='exa -al'
alias shutdown='systemctl poweroff'
alias ts='~/dotfiles/scripts/snapshot.sh'
alias matrix='cmatrix'
alias wifi='nmtui'
alias rw='~/dotfiles/waybar/reload.sh'
alias winclass="xprop | grep 'CLASS'"
alias dot="cd ~/dotfiles"

# New ones
# alias Hy="Hyprland"
# alias obs="obs-studio"
# alias news="newsboat"
# alias mc="minecraft-launcher"
# alias kp="keepassxc ~/dotfiles/config.kdbx"
# alias kpm="keepassxc ~/dotfiles/config.kdbx --keyfile ~/dotfiles/config.key"
alias notes='vim ~/notes.txt'


# GIT
alias ga="git add"
alias gc="git commit -m"
alias gp="git push"
alias gpl="git pull"


# SCRIPTS
alias wallp='~/dotfiles/scripts/updatewal.sh'
alias gr='python ~/dotfiles/scripts/growthrate.py'
alias chat='python ~/mychatgpt/mychatgpt.py'
alias confb='nvim ~/dotfiles/.bashrc'


alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
eval "$(starship init bash)"
cat ~/.cache/wal/sequences
echo ""
pfetch
