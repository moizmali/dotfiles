.PHONY: setup
setup:
	stow config --dotfiles --target ~/

.PHONY: remove
remove:
	stow config --dotfiles --target ~/ -D

