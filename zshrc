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

plugins=(git zsh-autosuggestions /	# should be in $ZSH_CUSTOM/plugins/
	 zsh-syntax-highlighting man /
	 history history-substring-search /
	 zsh-autopair)
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

# source /Users/Edd/.gulp-autocompletion-zsh/gulp-autocompletion.zsh

# Custom aliases
alias rmd='rm -rf'
alias dfh='df -H'

alias gdh='gd HEAD'
alias grm='git rm'

alias npme='PATH=$(npm bin):$PATH'

alias doc=docker
alias docm=docker-machine
alias docc=docker-compose

alias her=heroku

# The next line updates PATH for the Google Cloud SDK.
source '/Users/Edd/Library/google-cloud-sdk/path.zsh.inc'

# The next line enables shell command completion for gcloud.
source '/Users/Edd/Library/google-cloud-sdk/completion.zsh.inc'

source $ZSH/oh-my-zsh.sh
