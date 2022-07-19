#XDG                                                         
XDG_DATA_HOME=/home/me/.local/share                          
XDG_CONFIG_HOME=/home/me/.config                             
XDG_STATE_HOME=/home/me/.local/state                         
XDG_CACHE_HOME=/home/me/.cache

#. "$HOME/.cargo/env"
PATH=$PATH:/home/me/.local/bin:/home/me/.node_modules/bin:/home/me/.local/share/gem/ruby/3.0.0/bin
npm_config_prefix=/home/me/.node_modules
ANDROID_HOME="$XDG_DATA_HOME"/android
CARGO_HOME="$XDG_DATA_HOME"/cargo
export GNUPGHOME=/home/me/.local/share/gnupg
GOPATH="$XDG_DATA_HOME"/go
GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
XCURSOR_PATH=/usr/share/icons:${XDG_DATA_HOME}/icons
LESSHISTFILE="$XDG_CACHE_HOME"/less/history
alias netbeans=netbeans --userdir "${XDG_CONFIG_HOME}"/netbeans

# zsh history file
HISTFILE="$XDG_STATE_HOME"/zsh/history

#.bundle
BUNDLE_USER_CONFIG="$XDG_CONFIG_HOME"/bundle 
BUNDLE_USER_CACHE="$XDG_CACHE_HOME"/bundle
BUNDLE_USER_PLUGIN="$XDG_DATA_HOME"/bundle

#Rustup
RUSTUP_HOME="$XDG_DATA_HOME"/rustup

#wallpaper
wallpaper=/home/me/Pictures/flowerai.png

#wget
alias wget=wget --hsts-file="$XDG_DATA_HOME/wget-hsts"

#z
_Z_DATA="$XDG_DATA_HOME/z"

XDG_SESSION_TYPE=wayland
XDG_CURRENT_DESKTOP=sway

alias ls="exa"
alias ll="ls -la"
alias cat='bat --theme="TwoDark" --style="numbers" --color=always'
alias suck='aria2c --file-allocation=none -c -x 10 -s 10 -d "$HOME/Downloads" '
alias shizuku='adb shell sh /storage/emulated/0/Android/data/moe.shizuku.privileged.api/start.sh'
alias up='topgrade --yes'
