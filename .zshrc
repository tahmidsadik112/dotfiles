# Created by newuser for 5.3.1
source ~/.zplug/init.zsh
zplug "chrissicool/zsh-256color"
zplug "djui/alias-tips"
zplug "rimraf/k"
zplug "unixorn/tumult.plugin.zsh"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-history-substring-search"
zplug "peterhurford/git-it-on.zsh"
zplug "momo-lab/zsh-replace-multiple-dots"

#oh-my-zsh plugs

zplug "plugins/git", from:oh-my-zsh
# zplug "plugins/osx", from:oh-my-zsh
# zplug "plugins/aws", from:oh-my-zsh
# zplug "plugins/brew", from:oh-my-zsh
# zplug "plugins/github", from:oh-my-zsh
# zplug "plugins/colored-man", from:oh-my-zsh
# zplug "plugins/pip", from:oh-my-zsh
# zplug "plugins/python", from:oh-my-zsh
# zplug "plugins/rsync", from:oh-my-zsh
# zplug "plugins/sudo", from:oh-my-zsh
# zplug "plugins/vagrant", from:oh-my-zsh

setopt prompt_subst
zplug romkatv/powerlevel10k, use:powerlevel10k.zsh-theme

# Case insenstive completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
# immediately insert first match
# setopt MENU_COMPLETE

# aliases
alias .sh='source ~/.zshrc'
alias esh='nvim ~/.zshrc'
alias mvim='/Applications/MacVim.app/Contents/bin/mvim'
alias rn='react-native'
alias vim='nvim'
alias y='yaourt'
alias install='yaourt -S'
alias search='yaourt -Ss'
alias refont='fc-cache -f -v'
alias studio='/opt/android-studio/bin/studio.sh'
alias cat='bat'


# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi
zplug load --verbose

# fnm
eval "$(fnm env --multi)"
export PATH=$PATH:/usr/local/opt/mysql@5.7/bin

export HOST_IP=`eval ifconfig | grep -Eo 'inet (addr:)?([0-9]*\\.){3}[0-9]*' | grep -Eo '([0-9]*\\.){3}[0-9]*' | grep -v '127.0.0.1' | head -n 1`

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
