# load our own completion functions
fpath=(~/.zsh/completion ~/.zsh/functions $fpath)

# Disable "flow control"
setopt noflowcontrol

# completion
autoload -U compinit
compinit

# use vim as the visual editor
export VISUAL=vim
export EDITOR=$VISUAL

# makes color constants available
autoload -U colors
colors

# load custom executable functions
for function in ~/.zsh/functions/*; do
  source $function
done

# load custom plugins functions
# for function in ~/.zsh/plugins/*; do
  # source $function
# done

# enable colored output from ls, etc
export CLICOLOR=1

export BLOCK_SIZE=human-readable # https://www.gnu.org/software/coreutils/manual/html_node/Block-size.html
export HISTSIZE=11000
export SAVEHIST=10000
export HISTFILE=~/.zsh_history

# aliases
[[ -f ~/.aliases ]] && source ~/.aliases

# Local config
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local
[[ -f ~/.zshrc.private ]] && source ~/.zshrc.private

# zplug
[[ -f ~/.zplugrc ]] && source ~/.zplugrc



