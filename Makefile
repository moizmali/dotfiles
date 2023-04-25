# Copy nvim configurations to git directory
.PHONY: update-nvim
update-nvim:
	rm -rf nvim/
	mkdir nvim/
	cp -r $(HOME)/.config/nvim/* nvim/

# Copy tmux configurations to git directory
.PHONY: update-tmux
update-tmux:
	rm -rf tmux/
	mkdir tmux/
	cp -r $(HOME)/.config/tmux/* tmux/


.PHONY: read-config
read-config: update-nvim update-tmux

