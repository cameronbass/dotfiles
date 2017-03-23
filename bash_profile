GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\033[G\]\[\033[01;32m\]\w \[\033[00;33m\]\[\033[01;36m\]|>\[\033[00m\] '
source ~/.bashrc

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
