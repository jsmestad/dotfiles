# Install command-line tools using Homebrew
# Usage: `brew bundle Brewfile`

tap thoughtbot/formulae
install rcm

# Make sure we’re using the latest Homebrew
update

# Upgrade any already-installed formulae
upgrade

# Install GNU core utilities (those that come with OS X are outdated)
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
install coreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
install findutils

# Install GNU `sed`, overwriting the built-in `sed`
install gnu-sed --default-names

# Install Bash
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before running `chsh`.
install bash
install bash-completion

# Install ZSH
# Note: don't forget to add `/usr/local/bin/zsh` to `/etc/shells` before running `chsh`
install zsh
install zsh-completions

# Install wget with IRI support
install wget 

# Install more recent versions of some OS X tools
install mvim --override-system-vim

# Install other useful binaries
install ack
install the_silver_searcher
install imagemagick
install ghostscript
install ctags

# Version Control
install git
install git-flow-avh
install git-extras
install tig

# Web Applications
install postgresql
install freeimage
install ghostscript
install imagemagick
install qt
install chromedriver
install memcached
install redis
install heroku-toolbelt
install phantomjs
install node

# Pairing Utilities
install mobile-shell --HEAD
install tmux
install wemux
install pow
install reattach-to-user-namespace
install ngrok

# Ruby
install rbenv
install rbenv-gem-rehash
install ruby-build

# Python
install python

# Remove outdated versions from the cellar
cleanup
