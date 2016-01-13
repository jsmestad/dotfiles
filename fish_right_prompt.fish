function fish_right_prompt -d 'prompt'
  set -l red (set_color ff8472)
  set -l normal (set_color normal)
  set rubyversion (rbenv version-name)
  echo -n $red$rubyversion$normal
end

