# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/soufiaane/.oh-my-zsh"
fpath+=$HOME/.zsh/pure

#ZSH_THEME="gruvbox"
#SOLARIZED_THEME="dark"
ZSH_THEME=""
autoload -U promptinit; promptinit
prompt pure

COMPLETION_WAITING_DOTS="false"
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="dd.mm.yyyy"
# ZSH_CUSTOM=/path/to/new-custom-folder

plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

export LANG=en_GB.UTF-8
export TERM='alacritty'
export EDITOR='nvim'

if [[ -f ~/.dircolors ]] ; then
	 eval $(dircolors -b ~/.dircolors)
fi

alias grep='grep --color=always'
alias diff='diff --color=always'
alias ls='ls --color=always'
alias ip='ip --color=alway'

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias vim='/usr/bin/nvim'

export PATH=$PATH:$HOME/.local/bin
