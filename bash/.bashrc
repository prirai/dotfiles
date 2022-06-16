#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '

free_mem()
{
    awk '/MemFree/{print $2}' /proc/meminfo
}

PS1='$(free_mem) prompt > '

# z - learns frequent cd directories
[[ -r "/usr/share/z/z.sh" ]] && source /usr/share/z/z.sh
