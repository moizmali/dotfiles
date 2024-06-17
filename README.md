# Dotfiles

1. Clone the GitHub repository and move to the cloned directory:

```
git clone git@github.com:moizmali/dotfiles.git
cd dotfiles
```

2. Use the `stow` command to create symlinks from the repository to the configuration folder.

```
stow tmux --target ~/
stow nvim --target ~/
```

That's it, all your dotfiles should be configured and ready to go.
