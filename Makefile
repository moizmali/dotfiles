.PHONY: init
init: install-tpm update-config

.PHONY: install-tpm
install-tpm:
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

.PHONY: update-config
update-config:
	cp .tmux.conf $(HOME)/

.PHONY: update-nvim
update-nvim:
	cp -r $(HOME)/.config/nvim/* .config/nvim/
