# Dotfiles

## Prerequisites

- Git
- Tmux
- NeoVim
- RipGrep
- GNU Stow

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

4. Setup the nerd font in your terminal of choice. I use the default GNOME terminal and the nerd for `Hack`. The nerd font can be downloaded from https://www.nerdfonts.com.

Download the nerd font of choice and extract it to the `/usr/share/fonts` folder to make it available system wide. Then you should be able to add this font to your terminal using the terminal settings.

And that's it, all your dotfiles should be configured and ready to go.

## Bash Setup

Install **Oh My Bash** from the site https://ohmybash.nntoan.com. The theme I mainly use is `simple`.
