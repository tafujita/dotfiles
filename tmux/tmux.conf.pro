set -g default-command "reattach-to-user-namespace -l zsh"
# tmux display things in 256 colors
set -g default-terminal "screen-256color"
set -g status-utf8 on

set -g history-limit 20000

# automatically renumber tmux windows
set -g renumber-windows on

# unbind default prefix and set it to Ctrl+a
unbind C-b
set -g prefix C-a
bind C-a send-prefix

# for nested tmux sessions
bind-key a send-prefix

# Activity Monitoring
setw -g monitor-activity off
set -g visual-activity off

# Rather than constraining window size to the maximum size of any client
# connected to the *session*, constrain window size to the maximum size of any
# client connected to *that window*. Much more reasonable.
setw -g aggressive-resize on

# make delay shorter
set -sg escape-time 0

# tile all windows
unbind =
bind = select-layout tiled

# cycle through panes
# unbind C-a
# unbind o # this is the default key for cycling panes
# bind ^A select-pane -t:.+

# make window/pane index start with 1
set -g base-index 1
setw -g pane-base-index 1

# set-option -g set-titles on
# set-option -g set-titles-string "#T - #W"
# set-window-option -g automatic-rename on

######################
#### Key Bindings ####
######################

# reload config file
bind r source-file ~/.tmux.conf \; display "Config Reloaded!"

# quickly open a new window
bind N new-window

# split window and fix path for tmux 1.9
bind | split-window -h -c "#{pane_current_path}"
bind - split-window -v -c "#{pane_current_path}"

# synchronize all panes in a window
bind y setw synchronize-panes

# pane movement shortcuts
bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
bind l select-pane -R

bind -r C-h select-window -t :-
bind -r C-l select-window -t :+

# Resize pane shortcuts
bind -r H resize-pane -L 10
bind -r J resize-pane -D 10
bind -r K resize-pane -U 10
bind -r L resize-pane -R 10

# enable mouse support for switching panes/windows
# NOTE: This breaks selecting/copying text on OSX
# To select text as expected, hold Option to disable it (iTerm2)
setw -g mode-mouse on
set -g mouse-select-pane on
set -g mouse-resize-pane on
set -g mouse-select-window on

# maximizing and restoring windows
unbind Up
bind Up new-window -d -n fullscreen \; swap-pane -s fullscreen.1 \; select-window -t fullscreen
unbind Down
bind Down last-window \; swap-pane -s fullscreen.1 \; kill-window -t fullscreen

# set vi mode for copy mode
setw -g mode-keys vi
# more settings to make copy-mode more vim-like
unbind [
bind Escape copy-mode
unbind p
bind p paste-buffer
bind -t vi-copy 'v' begin-selection
bind -t vi-copy 'y' copy-selection

# Buffers to/from Mac clipboard, yay tmux book from pragprog
bind C-c run "tmux save-buffer - | reattach-to-user-namespace pbcopy"
bind C-v run "tmux set-buffer $(reattach-to-user-namespace pbpaste); tmux paste-buffer")

##############################
### Color & Style Settings ###
##############################

source ~/.dotfiles/tmux/theme.sh
