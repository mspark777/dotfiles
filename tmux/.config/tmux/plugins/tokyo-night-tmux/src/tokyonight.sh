#!/usr/bin/env bash

if [ ${#PALLETE[@]} -eq 0 ]; then
  echo "Warning: Tokyo Night palette not loaded. Colors may not display correctly."
fi

tmux set -g @prefix_highlight_fg "${PALLETE[bg]}"
tmux set -g @prefix_highlight_bg "${PALLETE[magenta]}"

tmux set -g status-interval 1
tmux set -g status on

tmux set -g status-justify left
tmux set -g status-style "bg=${PALLETE[bg]},fg=${PALLETE[fg]}"

tmux set -g pane-border-style "bg=default,fg=${PALLETE[fg_gutter]}"
tmux set -g pane-active-border-style "bg=default,fg=${PALLETE[magenta]}"
tmux set -g display-panes-colour "${PALLETE[bg]}"
tmux set -g display-panes-active-colour "${PALLETE[fg_gutter]}"

tmux set -g message-style "bg=${PALLETE[bg_highlight]},fg=${PALLETE[magenta]}"
tmux set -g message-command-style "bg=${PALLETE[bg_highlight]},fg=${PALLETE[magenta]}"
