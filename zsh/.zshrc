# path

fpath+=$ZDOTDIR/.zfunc

# AUTOCOMPLETION

#compinit -d "$XDG_CACHE_HOME"/zsh/zcompdump-"$ZSH_VERSION"

# initialize autocompletion
autoload -U compinit -d "$XDG_CACHE_HOME"/zsh/zcompdump-"$ZSH_VERSION" && compinit

# history setup
setopt SHARE_HISTORY
HISTFILE="$XDG_STATE_HOME"/zsh/history
#HISTFILE=$ZDOTDIR/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt HIST_EXPIRE_DUPS_FIRST
setopt EXTENDED_HISTORY
# Read options and parameters descriptions: man zshoptions and man zshparam

# autocompletion using arrow keys (based on history)
bindkey '\e[A' history-search-backward
bindkey '\e[B' history-search-forward

# GENERAL

# (bonus: Disable sound errors in Zsh)

# never beep
setopt NO_BEEP

# PLUGINS
source $ZDOTDIR/.zsh/plugins/git/git-prompt.sh
source $ZDOTDIR/.zsh/plugins/zsh-z/zsh-z.plugin.sh

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

# PLUGINS

source $ZDOTDIR/.zsh/plugins/git/git-prompt.sh


# z - learn frequent cd directories
[[ -r "/usr/share/z/z.sh" ]] && source /usr/share/z/z.sh

#vars


# USER PROMPT

# enable command-subsitution in PS1
setopt PROMPT_SUBST

NL=$'\n'

PS1='$NL%B%F{cyan}%3~%f%b% %F{magenta}$(__git_ps1 "  %s")%f$NL%B%(?.%F{green}.%F{red})%(!.#.>)%f%b '
