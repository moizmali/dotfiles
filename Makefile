# Copy nvim configurations to git directory
.PHONY: update-nvim
update-nvim:
	rm -rf .config/nvim/
	mkdir .config/nvim/
	cp -r $(HOME)/.config/nvim/* .config/nvim/

