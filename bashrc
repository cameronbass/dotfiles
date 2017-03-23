export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"

export PATH="$PATH:$HOME/.rvm/bin"
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi 
export PS1="\W \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\|> "
alias reails-ctag="ctags -R --languages=ruby --exclude=.git --exclude=log . $(bundle list _-paths)"
alias updog="brew update; brew upgrade; brew cleanup; brew doctor"
alias clean_orig="find . -name '*.orig' -delete"
