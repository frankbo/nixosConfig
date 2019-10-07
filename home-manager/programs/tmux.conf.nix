{ pkgs,  ... }:

''
set -g mouse on

######################
### DESIGN CHANGES ###
######################

# Open panes in at same location
bind c new-window -c "#{pane_current_path}"
bind '"' split-window -c "#{pane_current_path}"
bind % split-window -h -c "#{pane_current_path}"

# panes



## Status bar design
# status line
set -g status-justify left
set -g status-bg default
set -g status-fg colour12
set -g status-interval 2

# messaging





#window mode



# window status
setw -g window-status-format " #F#I:#W#F "
setw -g window-status-current-format " #F#I:#W#F "
setw -g window-status-format "#[fg=magenta]#[bg=black] #I #[bg=cyan]#[fg=colour8] #W "
setw -g window-status-current-format "#[bg=brightmagenta]#[fg=colour8] #I #[fg=colour8]#[bg=colour14] #W "







# Info on left (I don't have a session display for now)
set -g status-left '''

# loud or quiet?
set-option -g visual-activity off
set-option -g visual-bell off
set-option -g visual-silence off
set-window-option -g monitor-activity off
set-option -g bell-action none

set -g default-terminal "screen-256color"

# set -g default-terminal "xterm-256color"
set-option -s default-terminal "xterm-256color"
set -ga terminal-overrides ",xterm-256color:Tc"

# The modes {
setw -g clock-mode-colour colour135




# }
# The panes {






# }
# The statusbar {

set -g status-position bottom
set -g status-bg colour234
set -g status-fg colour137

set -g status-left '''
set -g status-right '#[fg=colour233,bg=colour241,bold] %d/%m #[fg=colour233,bg=colour245,bold] %H:%M:%S '
set -g status-right-length 50
set -g status-left-length 20




setw -g window-status-current-format ' #I#[fg=colour250]:#[fg=colour255]#W#[fg=colour50]#F '




setw -g window-status-format ' #I#[fg=colour237]:#[fg=colour250]#W#[fg=colour244]#F '





# }
# The messages {





# }
''
