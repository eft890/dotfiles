export ZSH=$HOME/.oh-my-zsh

###############################################################################
#			      OH_MY_ZSH SETTINGS
###############################################################################

ZSH_THEME="agnoster"
DEFAULT_USER="Edd"

# CASE_SENSITIVE="true"			# case-sensitive completion
# export UPDATE_ZSH_DAYS=13		# auto update frequency
# DISABLE_AUTO_TITLE="true"		# terminal title auto-set
# ENABLE_CORRECTION="true"		# command auto-correction
COMPLETION_WAITING_DOTS="true"		# red waiting dots
DISABLE_UNTRACKED_FILES_DIRTY="true"	# git status shows clean with untracked files
# HIST_STAMPS="mm/dd/yyyy"		# formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# ZSH_CUSTOM=/path/to/new-custom-folder	# zsh custom config files

# Source antigen for bundles
source ~/dotfiles/antigen/antigen.zsh

antigen use oh-my-zsh

# Built-in plugins
antigen bundle git
antigen bundle history
antigen bundle history-substring-search
antigen bundle man
antigen bundle npm

# Custom plugins
antigen bundle hlissner/zsh-autopair
antigen bundle lukechilds/zsh-nvm
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme agnoster

antigen apply

bindkey '^ ' autosuggest-accept

###############################################################################
#			         ZSH SETTINGS
###############################################################################

setopt interactivecomments		# allow comment commands

###############################################################################
#			         ENV SETTINGS
###############################################################################

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export LANG=en_US.UTF-8		# set language env

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# source ~/.gulp-autocompletion-zsh/gulp-autocompletion.zsh

export VISUAL=$(which nvim)
export EDITOR=$(which nvim)

# Custom aliases
alias rmd='rm -rf'
alias dfh='df -H'
alias psg='ps | grep -v grep | grep'

alias gdh='gd HEAD'
alias grm='git rm'
alias gpuo='gp -u origin'
alias gw='cat ~/.oh-my-zsh/plugins/git/git.plugin.zsh | grep'

alias nv=nvim

alias npmi='npm install'

alias doc=docker
alias docm=docker-machine
alias docc=docker-compose

alias her=heroku

export GOOGLE_CLOUD_SDK_ROOT='~/Library/google-cloud-sdk'
# The next line updates PATH for the Google Cloud SDK.
if [ -d '$GOOGLE_CLOUD_SDK_ROOT' ] ; then
  source '$GOOGLE_CLOUD_SDK_ROOT/google-cloud-sdk/path.zsh.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -d '$GOOGLE_CLOUD_SDK_ROOT' ] ; then
  source '$GOOGLE_CLOUD_SDK_ROOT/google-cloud-sdk/completion.zsh.inc'
fi

if [ -f './keys' ] ; then
  source ./keys
fi

source $ZSH/oh-my-zsh.sh

