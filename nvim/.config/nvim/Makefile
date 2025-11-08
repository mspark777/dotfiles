help:
	@cat Makefile

tpm:
	mkdir -p ~/.tmux/plugins
	rm -rf ~/.tmux/plugins/*
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

clean:
	rm -rf ~/.local/share/nvim/*
	rm -rf ~/.local/state/nvim/*

cleanall: clean
	rm -f lazy-lock.json
