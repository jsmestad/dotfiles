# load our own completion functions
fpath=(~/.zsh/completion ~/.zsh/functions $fpath)

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

# enable colored output from ls, etc
export CLICOLOR=1

# load dotfiles scripts
export PATH="$HOME/.bin:$PATH"


# aliases
[[ -f ~/.aliases ]] && source ~/.aliases

# Local config
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

# antigen
[[ -f ~/.antigenrc ]] && source ~/.antigenrc

export NVM_DIR="/Users/Smestad/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
