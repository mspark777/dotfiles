help:
	@cat Makefile

install_tpm:
	mkdir -p ~/.tmux/plugins
	rm -rf ~/.tmux/plugins/*
	# git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
	git clone https://github.com/RyanMacG/tpm-redux.git ~/.tmux/plugins/tpm-redux

update_tpm:
	cd ~/.tmux/plugins/tpm-redux && git pull

delete_nvim_plugins:
	rm -rf ~/.local/share/nvim/*
	rm -rf ~/.local/state/nvim/*

clean_nvim_plugins: delete_nvim_plugins
	rm -f ~/.config/nvim/lazy-lock.json
