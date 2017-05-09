dotfiles
========

This dotfiles repo requires `zsh` to be installed on your machine.

If your on OSX, I use the [Homebrew]() version of `zsh` as it tends to be newer than the bundled version.

```
brew install zsh
command -v zsh | sudo tee -a /etc/shells
chsh -s $(which zsh)
```

Install
-------

```

brew tap thoughtbot/formulae
brew install rcm

mkdir -p $HOME/code/self
git clone git://github.com/jsmestad/dotfiles.git $HOME/code/self/dotfiles
cd $HOME/code/self
rcup -d dotfiles -x README.md -x LICENSE -x Brewfile
```

Upgrading dotfiles
------------------

Once you pull down changes, you can safely run `rcup` anywhere on your machine. Once completed, I
suggest using a new shell window as many changes may not show up.


Make your own customizations
----------------------------

Customizations that are not intended for upstream are best placed in a branch off master. I personally
use a `self` branch and place my customizations there. This eases pull down global changes.

Let's say you want to customize `zshrc` with something. Switch to your `self` branch, create a file
named `zshrc.local` and commit that. Running `rcup` will place the file in your home directory.

## `self` branch

I like to commit `.local` files into this branch as I use these changes on multiple machines. If you
want this same functionality. Go into the `.gitignore` on your branch and comment out the line ignoring
them.

### SECURITY NOTICE

**There is a
gitignore entry to protect you from entering these into github, but do not rely on that!**

There are a few files that are extended to also include a ".private" suffix. This is where I suggest
placing private keys if you must. Things like `NPM_TOKEN` or `AWS_ACCESS_KEY_ID` values.

## Example Customizations

Put your customizations in dotfiles appended with `.local`:

* `aliases.local`
* `gitconfig.local`
* `gvimrc.local`
* `tmux.conf.local`
* `vimrc.local`
* `vimrc.bundles.local`
* `zshrc.local`

For example, your `~/.aliases.local` might look like this:

    # Productivity
    alias todo='$EDITOR ~/.todo'

Your `~/.gitconfig.local` might look like this:

    [alias]
      l = log --pretty=colored
    [pretty]
      colored = format:%Cred%h%Creset %s %Cgreen(%cr) %C(bold blue)%an%Creset
    [user]
      name = Justin Smestad
      email = justin@overstuffedgorilla.com

Your `~/.zshrc.local` might look like this:

    # recommended by brew doctor
    export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

Your `~/.vimrc.bundles.local` might look like this:

    Bundle 'Lokaltog/vim-powerline'
    Bundle 'stephenmckinney/vim-solarized-powerline'
