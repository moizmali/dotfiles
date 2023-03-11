# Copy nvim configurations to git directory
.PHONY: update-nvim
update-nvim:
	rm -rf nvim/
	mkdir nvim/
	cp -r $(HOME)/.config/nvim/* nvim/

