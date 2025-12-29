help:
	@cat Makefile

install-tpm:
	mkdir -p ~/.tmux/plugins
	rm -rf ~/.tmux/plugins/*
	git clone https://github.com/RyanMacG/tpm-redux.git ~/.tmux/plugins/tpm-redux

update-tpm:
	cd ~/.tmux/plugins/tpm-redux && git pull

delete-nvim-plugins:
	rm -rf ~/.local/share/nvim/*
	rm -rf ~/.local/state/nvim/*

clean-nvim-plugins: delete-nvim-plugins
	rm -f ~/.config/nvim/lazy-lock.json
