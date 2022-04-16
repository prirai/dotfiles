# dotfiles

My customized dotfiles.



# Sway

```
$mod+Return exec $term
$mod+Shift+q kill
$mod+d exec $menu
$mod+Shift+d exec $dash
$mod+n exec $nm
$mod+c exec $clipboard
$mod+period exec $emoji-sel
$mod+Shift+c reload 
$mod+Print exec grim -t png /home/me/Pictures/screenshots/$(date +%Y-%m-%d_%H-%m-%s).png
Print exec grim -t png -g "$(slurp)" /home/me/Pictures/screenshots/$(date +%Y-%m-%d_%H-%m-%s).png
$mod+Shift+Print grim -g "$(swaymsg -t get_tree | jq -r '.. | select(.focused?) | .rect | "\(.x),\(.y) \(.width)x\(.height)"')" /home/me/Pictures/screenshots/$(date +%Y-%m-%d_%H-%m-%s).png
$mod+Ctrl+Print grim -g "$(slurp)" - | wl-copy
$mod+Ctrl+v Wf-recorder -f /home/me/Videos/record/$(date +%Y-%m-%d_%H-%m-%s).mp4
$mod+l exec $lock
$mod+Shift+e exec $prompt
$mod+b splith
$mod+v splitv
$mod+s layout stacking
$mod+t layout tabbed
$mod+e layout toggle split
$mod+w sticky toggle
$mod+f fullscreen
$mod+Shift+space floating toggle
$mod+space focus mode_toggle
$mod+a focus parent
$mod+p sticky toggle
$mod+Left focus left
$mod+Down focus down
$mod+Up focus up
$mod+Right focus right
$mod+Shift+Left move left
$mod+Shift+Down move down
$mod+Shift+Up move up
$mod+Shift+Right move right
Left resize shrink width 10px
Down resize grow height 10px
Up resize shrink height 10px
Right resize grow width 10px
Return mode "default"
Escape mode "default"
$mod+r mode "resize"
$mod+Shift+minus move scratchpad
$mod+minus scratchpad show
XF86AudioMicMute exec pactl set-source-mute @DEFAULT_SOURCE@ toggle
XF86AudioRaiseVolume exec pamixer -ui 2 && pamixer --get-volume > $WOBSOCK
XF86AudioLowerVolume exec pamixer -ud 2 && pamixer --get-volume > $WOBSOCK
XF86AudioMute exec pamixer --toggle-mute && ( pamixer --get-mute && echo 0 > $WOBSOCK ) || pamixer --get-volume > $WOBSOCK
XF86MonBrightnessDown exec brightnessctl set 5%- | sed -En 's/.*\(([0-9]+)%\).*/\1/p' > $WOBSOCK
XF86MonBrightnessUp exec brightnessctl set +5% | sed -En 's/.*\(([0-9]+)%\).*/\1/p' > $WOBSOCK
XF86AudioPlay exec playerctl play-pause
XF86AudioNext exec playerctl next
XF86AudioPrev exec playerctl previous
XF86Search exec bemenu-run
$mod+1 workspace number 1
$mod+2 workspace number 2
$mod+3 workspace number 3
$mod+4 workspace number 4
$mod+5 workspace number 5
$mod+6 workspace number 6
$mod+7 workspace number 7
$mod+8 workspace number 8
$mod+9 workspace number 9
$mod+0 workspace number 10
$mod+Shift+1 move container to workspace number 1
$mod+Shift+2 move container to workspace number 2
$mod+Shift+3 move container to workspace number 3
$mod+Shift+4 move container to workspace number 4
$mod+Shift+5 move container to workspace number 5
$mod+Shift+6 move container to workspace number 6
$mod+Shift+7 move container to workspace number 7
$mod+Shift+8 move container to workspace number 8
$mod+Shift+9 move container to workspace number 9
$mod+Shift+0 move container to workspace number 10
```
