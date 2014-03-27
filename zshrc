# load our own completion functions
fpath=(~/.zsh/completion ~/.zsh/functions $fpath)

# completion
autoload -U compinit
compinit

# use vim as the visual editor
export VISUAL=vim
export EDITOR=$VISUAL

# aliases
[[ -f ~/.aliases ]] && source ~/.aliases

# Local config
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

# antigen
[[ -f ~/.antigenrc ]] && source ~/.antigenrc
