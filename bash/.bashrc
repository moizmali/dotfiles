# Git Branch Tree
alias gtree="git log --graph --decorate --abbrev-commit --pretty=\"%C(auto)%h%d %C(blue bold)%an%Creset %C(yellow)-%Creset %s\""

# User powerline theme if the package has been installed.
if [ -f `which powerline-daemon` ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  . /usr/share/powerline/bash/powerline.sh
fi

