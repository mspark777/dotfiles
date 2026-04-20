help:
	@cat Makefile

update-tmux-plugins:
	cd ~/.tmux/plugins/tmux-powerkit && git pull
	cd ~/.tmux/plugins/vim-tmux-navigator && git pull

install-tmux-plugins:
	git clone https://github.com/fabioluciano/tmux-powerkit.git ~/.tmux/plugins/tmux-powerkit
	git clone git@github.com:christoomey/vim-tmux-navigator.git ~/.tmux/plugins/vim-tmux-navigator

delete-nvim-plugins:
	rm -rf ~/.local/share/nvim/*
	rm -rf ~/.local/state/nvim/*

clean-nvim-plugins: delete-nvim-plugins
	rm -f ~/.config/nvim/lazy-lock.json
