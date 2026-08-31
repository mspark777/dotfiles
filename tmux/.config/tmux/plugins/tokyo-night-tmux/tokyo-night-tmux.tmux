#!/usr/bin/env bash

TOKYONIGHT_TMUX_PALETTES_FILE=src/palletes/night.sh
TOKYONIGHT_TMUX_COLOR_THEME_FILE=src/tokyonight.sh
TOKYONIGHT_TMUX_VERSION=1.0.0
TOKYONIGHT_TMUX_STATUS_CONTENT_FILE="src/tokyonight-status-content.sh"
TOKYONIGHT_TMUX_STATUS_CONTENT_NO_PATCHED_FONT_FILE="src/tokyonight-status-content-no-patched-font.sh"
_current_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

__cleanup() {
  unset -v TOKYONIGHT_TMUX_PALETTES_FILE TOKYONIGHT_TMUX_COLOR_THEME_FILE TOKYONIGHT_TMUX_VERSION
  unset -v TOKYONIGHT_TMUX_STATUS_CONTENT_FILE TOKYONIGHT_TMUX_STATUS_CONTENT_NO_PATCHED_FONT_FILE
  unset -v _current_dir
  unset -f __load __cleanup
}

__load() {
  source "$_current_dir/$TOKYONIGHT_TMUX_PALETTES_FILE"
  source "$_current_dir/$TOKYONIGHT_TMUX_COLOR_THEME_FILE"
  source "$_current_dir/$TOKYONIGHT_TMUX_STATUS_CONTENT_FILE"
}

__load
__cleanup
