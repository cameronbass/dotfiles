# GIT
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"

# --------------------------------------------------------------------------------------------------
# START SYSTEM ALIASES
# ==================================================================================================
# SYSTEM
alias rails-ctag="ctags -R --languages=ruby --exclude=.git --exclude=log . $(bundle list _-paths)"
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

# GIT
alias gcob="git co -b"
alias gco="git co"

# FUNDINGWORKS | ENDED | LAST USE: Early 2019
alias go-foreman="foreman start -f procfile.dev"
# ==================================================================================================
# END SYSTEM ALIASES
# --------------------------------------------------------------------------------------------------

# --------------------------------------------------------------------------------------------------
# START SYSTEM EXPORTS
# ==================================================================================================
# SYSTEM
export PATH="$PATH:$HOME/.rvm/bin"
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi 
export PS1="\W \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\n|> "

# NETFLIX
export MEECHUM_EMAIL=cbass@netflixcontractors.com
# ==================================================================================================
# END SYSTEM EXPORTS
# --------------------------------------------------------------------------------------------------

eval "$(direnv hook bash)"
