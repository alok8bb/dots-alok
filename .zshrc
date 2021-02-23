# 01100001 01101100 01101111 01101011 00101101 01100100 01101111 01110100 01110011  

# ohmyzsh theme
export ZSH="/home/alok/.oh-my-zsh"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# Aliases - 
alias vim="nvim"
alias battery="upower -i /org/freedesktop/UPower/devices/battery_BAT0"
alias cat="bat"
alias ls="logo-ls"
alias code="codium"
alias sudo="doas"
alias config='/usr/bin/git --git-dir=$HOME/dots-alok/ --work-tree=$HOME'

# Exports - 
export _JAVA_AWT_WM_NONREPARENTING=1
export PATH="$HOME/.android-studio/bin:$PATH"
export GOROOT="/usr/bin/go"
export PATH=$"$PATH:$GOROOT/bin"
eval "$(starship init zsh)"

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
