#!/bin/zsh
if [ -d "$HOME/.rbenv" ]; then
  export PATH="$PATH:$HOME/.rbenv/bin"
  eval "$(command rbenv init --no-rehash -)"
fi

function rbenv_prompt_info() {
  echo "$(rbenv version-name)"
}
