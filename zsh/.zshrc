# AUTOCOMPLETION

# initialize autocompletion
autoload -U compinit && compinit

# history setup
setopt SHARE_HISTORY
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt HIST_EXPIRE_DUPS_FIRST
# Read options and parameters descriptions: man zshoptions and man zshparam

# autocompletion using arrow keys (based on history)
bindkey '\e[A' history-search-backward
bindkey '\e[B' history-search-forward


# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100
SAVEHIST=10000
setopt extendedglob nomatch notify
bindkey -e

# PLUGINS
source ~/.zsh/plugins/git/git-prompt.sh
source ~/.zsh/plugins/zsh-z/zsh-z.plugin.sh

# git prompt options
# ...

# zsh-z plugin options
ZSH_CASE=smart # lower case patterns are treated as case insensitive
zstyle ':completion:*' menu select # improve completion menu style

# git prompt options
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_STATESEPARATOR=' '
GIT_PS1_HIDE_IF_PWD_IGNORED=true
GIT_PS1_COMPRESSSPARSESTATE=true

# USER PROMPT

# enable command-subsitution in PS1
setopt PROMPT_SUBST

NL=$'\n'

PS1='$NL%B%F{cyan}%3~%f%b$NL%B%(?.%F{green}.%F{red}🛑)%(!.#.>)%f%b '


# PLUGINS

source ~/.zsh/plugins/git/git-prompt.sh


# z - learn frequent cd directories
