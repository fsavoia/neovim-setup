# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git docker zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# export LANG=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
export EDITOR='nvim'

# Custom aliases
alias zshconfig="vim ~/.zshrc"
alias zreload="source ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias ll="eza --long --sort=modified --git --icons"
alias l="eza --long --sort=modified --git --icons"
alias la="eza --long --sort=modified --git --icons --all" 
alias python="python3"
alias py="python3"
alias pip="pip3"
alias eng="ssh -i ~/.ssh/id_rsa fsavoia@ein1-fsavoi-u22.fsd.forescout.com"
alias eng-api="sudo ssh -i /Users/fsavoia/.ssh/id_rsa -L 80:ein1-fsavoi-u20:5000 fsavoia@ein1-fsavoi-u20.fsd.forescout.com"
alias eng-docs="sudo ssh -i /Users/fsavoia/.ssh/id_rsa -L 80:ein1-fsavoi-u20:8000 fsavoia@ein1-fsavoi-u20.fsd.forescout.com"
alias eng-ssl="sudo ssh -i /Users/fsavoia/.ssh/id_rsa -L 443:ein1-fsavoi-u20:4443 fsavoia@ein1-fsavoi-u20.fsd.forescout.com"
alias dev="cd ~/Dev"
# alias cat='bat --theme=Dracula --italic-text=always --style=plain,changes --paging=never'
alias cls="clear"
alias gups="git checkout main && git fetch upstream && git merge upstream/main && git push"
alias tf="terraform"
alias hl="cd ~/Dev/homelab"
alias vi="nvim"
alias v="nvim"
alias vim="nvim"
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias zr="source ~/.zshrc"
alias cls="clear"
alias c="clear"
alias cdv="cd ~/.config/nvim"
alias cdk="cd ~/.config/kitty"
alias ql="qlmanage -p"
alias lt='eza --long --tree --sort=modified --git --icons'
alias y="yazi"
alias cdc="cd ~/.config"
alias lz="lazygit"
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init --no-rehash -)"
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# TMUX
export TMUX_CONF="$HOME/.config/tmux/tmux.conf"
alias ta="tmux attach -t"
alias tl="tmux ls"
alias td="tmux detach"
alias tk="tmux kill-session -t"
alias tn="tmux -f $TMUX_CONF new-session -s"

# Kubernetes
alias k="kubectl"

# --- setup fzf ---
# Use ( as the trigger sequence instead of the default **
export FZF_COMPLETION_TRIGGER='&'

export PATH="$PATH:/home/fsavoia/.fzf/bin/"
alias f="fzf"

# --- setup fzf theme ---
fg="#CBE0F0"
bg="#011628"
bg_highlight="#143652"
purple="#B388FF"
blue="#06BCE4"
cyan="#2CF9ED"

export FZF_DEFAULT_OPTS="--color=fg:${fg},bg:${bg},hl:${purple},fg+:${fg},bg+:${bg_highlight},hl+:${purple},info:${blue},prompt:${cyan},pointer:${cyan},marker:${cyan},spinner:${cyan},header:${cyan} --height 60% --border"

_fzf_comprun() {
  local command=$1
  shift

  case "$command" in
    cd)           fzf --preview 'eza --tree --color=always {} | head -200'   "$@" ;;
    export|unset) fzf --preview "eval 'echo \$'{}"         "$@" ;;
    ssh)          fzf --preview 'dig {}'                   "$@" ;;
    *)            fzf --preview 'cat -n --color=always {}' "$@" ;;
  esac
}
eval "$(fzf --zsh)"
# --- end of fzf setup ---

. "$HOME/.atuin/bin/env"
eval "$(atuin init zsh)"

eval "$(zoxide init --cmd cd zsh)"

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/fsavoia/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)
#

bindkey "^[[1;3C" forward-word
bindkey "^[[1;3D" backward-word
