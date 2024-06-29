# Dotfiles

## Prerequisites

- Git
- Tmux
- NeoVim
- RipGrep
- Stow

## Setup

1. Clone the GitHub repository:

```
git clone git@github.com:moizmali/dotfiles.git
```

2. Move to the newly cloned repository:

```
cd dotfiles
```

3. Use the `stow` command to create a symlink for a given dotfile to the home folder of your system. For example, to stow NeoVim configuration run the command:

```
stow nvim --target ~/
```

And that's it, all your dotfiles should be configured and ready to go.

## Bash Setup

Install **Oh My Bash** from the site https://ohmybash.nntoan.com. The theme I mainly use is `simple`.
