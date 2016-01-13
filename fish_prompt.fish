# name: nai
# Display the following bits on the left:
# * Current directory name
# name: murilasso
# * Git branch and dirty state (if inside a git repo)

function _git_branch_name
  echo (command git symbolic-ref HEAD ^/dev/null | sed -e 's|^refs/heads/||')
end

function _is_git_dirty
  echo (command git status -s --ignore-submodules=dirty ^/dev/null)
end

function _prompt_long_pwd --description 'Print the current working directory'
  echo $PWD | sed -e "s|^$HOME|~|" -e 's|^/private||'
end

function fish_prompt
  set -l last_status $status
  set -l cyan (set_color cyan)
  set -l yellow (set_color yellow)
  set -l red (set_color ff8472)
  set -l blue (set_color a7d6fd)
  set -l green (set_color d7fbb3)
  set -l normal (set_color normal)

  set -l dark_green (set_color b6f97a)

  if test $last_status = 0
      set arrow "$green➜ "
  else
      set arrow "$red➜ "
  end

  set -l cwd $blue(_prompt_long_pwd)

  if [ (_git_branch_name) ]
    set -l git_branch $blue(_git_branch_name)

    if [ (_is_git_dirty) ]
      set git_state "$red ✗"
    else
      set git_state "$dark_green ✔"
    end

    set git_info "$git_branch$git_state"
  end

  set currentuser (whoami)
  set hostname (hostname|cut -d . -f 1)
  set title "$currentuser@$hostname"

  set rubyversion rbenv

  echo -n $normal'┌'$green$title$normal':'$cwd
  echo
  echo -n $normal'└'$git_info $normal'$ '
end

