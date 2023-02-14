# Copy nvim configurations to git directory
.PHONY: update-nvim
update-nvim:
	cp -r $(HOME)/.config/nvim/* .config/nvim/

