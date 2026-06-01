help:
	@cat Makefile

tmux-plugins-update:
	cd ~/.tmux/plugins/tmux-powerkit && git pull
	cd ~/.tmux/plugins/vim-tmux-navigator && git pull

tmux-plugins-install:
	git clone https://github.com/fabioluciano/tmux-powerkit.git ~/.tmux/plugins/tmux-powerkit
	git clone git@github.com:christoomey/vim-tmux-navigator.git ~/.tmux/plugins/vim-tmux-navigator

nvim-plugins-delete:
	rm -rf ~/.local/share/nvim/*
	rm -rf ~/.local/state/nvim/*

nvim-plugins-clean: nvim-plugins-delete
	rm -f ~/.config/nvim/lazy-lock.json
