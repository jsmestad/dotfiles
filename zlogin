# makes color constants available
autoload -U colors
colors

# enable colored output from ls, etc
export CLICOLOR=1

# load dotfiles scripts
export PATH="$HOME/.bin:$PATH"

# Local config
[[ -f ~/.zlogin.local ]] && source ~/.zlogin.local
