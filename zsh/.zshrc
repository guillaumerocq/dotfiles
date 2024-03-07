#########################
### Framework section ###
#########################
# Sourcing "oh my zsh!" dir.
export ZSH="~/.oh-my-zsh"

# Please refer to themes directory or
# https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME=( agnoster )

# Case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=14

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git fzf kubectl docker terraform)

source $ZSH/oh-my-zsh.sh

# Inputs from installation have been moved in Conventional section
# https://github.com/ohmyzsh/ohmyzsh/blob/master/README.md

############################
### Conventional section ###
############################
# Main options handling
autoload -Uz compinit     # Shell commands loading from $fpath var.

compinit                  # Completion loading

# compinstall zstyle statement location
zstyle :compinstall filename '$HOME/.zshrc'

bindkey -e                # Emacs key bindings; -v to switch to Vim mode

HISTFILE=~/.histfile      # History file location
HISTSIZE=40000            # History no lines in memory
SAVEHIST=40000            # History no lines saved on disk

setopt AUTO_CD            # Directory shifting without "cd" (only path)
setopt CORRECT            # Auto-correct commands (prevents typo)
setopt EXTENDED_HISTORY   # Append timestamp to history commands

unsetopt beep             # No ears bleeding

# Aliases and tuning sourcing
for dotfile in ~/.zshrc.d/*.zsh; do source $dotfile; done
