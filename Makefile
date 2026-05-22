.PHONY: setup
setup:
	stow config --dotfiles --target ~/

.PHONY: remove
remove:
	stow config --dotfiles --target ~/ -D

.PHONY: update-nvim
update-nvim:
	rm -rf ~/.config/nvim
	cp -r config/dot-config/nvim ~/.config/
