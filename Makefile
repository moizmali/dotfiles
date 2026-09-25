.PHONY: setup
setup:
	mkdir -p ~/.claude
	stow config --dotfiles --target ~/

.PHONY: claude-mcp
claude-mcp:
	claude mcp add go-mcp --scope user gopls mcp
	claude mcp add dart-mcp --scope user dart mcp-server

.PHONY: remove
remove:
	stow config --dotfiles --target ~/ -D

.PHONY: bashrc
bashrc:
	cat .bashrc >> ~/.bashrc
