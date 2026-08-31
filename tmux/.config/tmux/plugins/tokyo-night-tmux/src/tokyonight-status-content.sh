#!/usr/bin/env bash

if [ ${#PALLETE[@]} -eq 0 ]; then
  echo "Warning: Tokyo Night palette not loaded. Colors may not display correctly."
fi


tmux set -g @prefix_highlight_output_prefix "#[fg=${PALLETE[magenta]}]#[bg=${PALLETE[bg]}]#[nobold]#[noitalics]#[nounderscore]#[bg=${PALLETE[magenta]}]#[fg=${PALLETE[bg]}]"
tmux set -g @prefix_highlight_output_suffix ""
tmux set -g @prefix_highlight_copy_mode_attr "fg=${PALLETE[magenta]},bg=${PALLETE[bg]},bold"

tmux set -g status-left "#[fg=${PALLETE[bg]},bg=${PALLETE[green]},bold] 󰌌 #S #[fg=${PALLETE[green]},bg=${PALLETE[bg]},nobold,noitalics,nounderscore]"
tmux set -g status-right "#[fg=${PALLETE[magenta]},bg=${PALLETE[bg_highlight]},nobold,noitalics,nounderscore]#[fg=${PALLETE[bg]},bg=${PALLETE[magenta]},bold] #H "

tmux set -g window-status-format "#[fg=${PALLETE[bg]},bg=${PALLETE[bg_highlight]},nobold,noitalics,nounderscore] #[fg=${PALLETE[fg]},bg=${PALLETE[bg_highlight]}]#I #[fg=${PALLETE[fg]},bg=${PALLETE[bg_highlight]},nobold,noitalics,nounderscore] #[fg=${PALLETE[fg]},bg=${PALLETE[bg_highlight]}]#W #F #[fg=${PALLETE[bg_highlight]},bg=${PALLETE[bg]},nobold,noitalics,nounderscore]"
tmux set -g window-status-current-format "#[fg=${PALLETE[bg]},bg=${PALLETE[magenta]},nobold,noitalics,nounderscore] #[fg=${PALLETE[bg]},bg=${PALLETE[magenta]}]#I #[fg=${PALLETE[bg]},bg=${PALLETE[magenta]},nobold,noitalics,nounderscore] #[fg=${PALLETE[bg]},bg=${PALLETE[magenta]}]#W #F #[fg=${PALLETE[magenta]},bg=${PALLETE[bg]},nobold,noitalics,nounderscore]"
tmux set -g window-status-separator ""
