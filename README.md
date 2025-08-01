# Dotfiles

## Prerequisites

- Git
- Tmux
- NeoVim
- RipGrep
- GNU Stow
- [D2](https://d2lang.com)

## Setup

1. Clone the GitHub repository:

```
git clone git@github.com:moizmali/dotfiles.git
```

2. Move to the newly cloned repository:

```
cd dotfiles
```

Optional step: If this is a fresh install, and Neovim, GNU Stow or any other dependencies are still not installed, then you can run the `setup.sh` file with the following command:

```
sudo ./setup.sh
```

Note: The above command will not only install Neovim, but also all the Flathub applications that I use on a day-to-day basis.

3. Run the following `make` command to create a symbolic link to the NeoVim and Tmux configuration files in the Git repository to your system `~/.config` folder.

```
make setup
```

## Terminal Setup

1. Install **Oh My Bash** from https://ohmybash.nntoan.com. The theme I mainly use is `simple`.

2. Setup the nerd font in your terminal of choice. I use the default GNOME terminal and the nerd for `Hack`. The nerd font can be downloaded from https://www.nerdfonts.com.

Download the nerd font of choice and extract it to the `/usr/share/fonts` folder to make it available system wide. Then you should be able to add this font to your terminal using the terminal settings.

3. Install the `catpuccin` theme for Tmux by following the instructions mentioned here: https://github.com/catppuccin/tmux

4. Install the `catpuccin` theme for GNOME Terminal by following the instructions mentioned here: https://github.com/catppuccin/gnome-terminal
Note: GNOME terminal now comes with the `catpuccin` theme built-in. You should be able to change the colour scheme from the preferences section itself without downloading any third-party colour schemes.

And that's it, all your dotfiles should be configured and ready to go.

## Post Installation

Install the following needed for development:

1. Go
2. Flutter
3. Android command line tools & SDK
4. Docker
5. Nodejs
6. AWS CLI
