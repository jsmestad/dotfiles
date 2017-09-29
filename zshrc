# Disable "flow control"
setopt noflowcontrol


# Configure History
setopt append_history
setopt hist_expire_dups_first
setopt hist_fcntl_lock
setopt hist_ignore_all_dups
setopt hist_lex_words
setopt hist_reduce_blanks
setopt hist_save_no_dups
#setopt share_history
setopt HIST_IGNORE_SPACE
export BLOCK_SIZE=human-readable # https://www.gnu.org/software/coreutils/manual/html_node/Block-size.html
export HISTSIZE=11000
export SAVEHIST=10000
export HISTFILE=~/.zsh_history


# completion
autoload -Uz compinit
typeset -i updated_at=$(date +'%j' -r ~/.zcompdump 2>/dev/null || stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)
if [ $(date +'%j') != $updated_at ]; then
  compinit
else
  compinit -C
fi

# use vim as the visual editor
export EDITOR='vim'

# enable colored output from ls, etc
export CLICOLOR=1

# NVM settings (Node.JS)
#
# Lazy load nvm on first use
export NVM_LAZY_LOAD=true
# NVM auto use
export NVM_AUTO_USE=true

[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local
[[ -f ~/.zshrc.private ]] && source ~/.zshrc.private

source ~/.zplugrc

# Aliases
[[ -f ~/.aliases ]] && source ~/.aliases
