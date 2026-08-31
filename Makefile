help:
	@cat Makefile

tmux-plugins-install:
	git submodule add https://github.com/christoomey/vim-tmux-navigator.git tmux/.config/tmux/plugins/vim-tmux-navigator

nvim-plugins-delete:
	rm -rf ~/.local/share/nvim/*
	rm -rf ~/.local/state/nvim/*

nvim-plugins-clean: nvim-plugins-delete
	rm -f ~/.config/nvim/lazy-lock.json
