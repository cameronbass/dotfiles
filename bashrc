export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"

export PATH="$PATH:$HOME/.rvm/bin"
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi 
export PS1="\W \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\n|> "

# System
alias reails-ctag="ctags -R --languages=ruby --exclude=.git --exclude=log . $(bundle list _-paths)"
alias updog="brew update; brew upgrade; brew cleanup; brew doctor"
alias clean_orig="find . -name '*.orig' -delete"
alias test="RAILS_ENV=test"
alias dev="RAILS_ENV=development"
alias rdbm="rake db:migrate"
alias server="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias tmux="TERM=screen-256color-bce tmux"
alias prune-branch="git branch --merged | egrep -v '(^\*|master|dev)' | xargs git branch -d"
alias b="cd .."
alias run_s3_test_server="fakes3 -r ~/.s3bucket -p 4567"

# GIT SPECIFIC

alias gcob="git co -b"
alias gco="git co"

# FundingWorks
alias go-foreman="foreman start -f procfile.dev"

eval "$(direnv hook bash)"
