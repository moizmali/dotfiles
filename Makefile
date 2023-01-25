.PHONY: init
init: install-tpm update-config

.PHONY: install-tpm
install-tpm:
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

.PHONY: update-config
update-config:
	cp .tmux.conf $(HOME)/

