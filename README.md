# Dotfiles

## What's Included

Configuration files managed via GNU Stow for:

- **Neovim** — `config/dot-config/nvim/`
- **Tmux** — `config/dot-config/tmux/`
- **Ghostty** — `config/dot-config/ghostty/`
- **Crush** — `config/dot-config/crush/`

## Prerequisites

Before running any setup scripts ensure the following are in place:

- **Ubuntu** — [Flathub remote](https://flathub.org/setup/ubuntu) must be configured
- **Fedora** — [RPM Fusion](https://rpmfusion.org) and [Flathub remote](https://flathub.org/setup/fedora) must be configured

## Setup

### 1. Clone the repository

```bash
git clone git@github.com:moizmali/dotfiles.git
cd dotfiles
```

### 2. Install dependencies (fresh install only)

Run the setup script for your distro. The scripts install Git, Ripgrep, GNU Stow, fzf, and common Flathub applications.

**Ubuntu:**
```bash
sudo bash scripts/ubuntu_setup.sh
```

**Fedora:**
```bash
sudo bash scripts/fedora_setup.sh
```

> **Note:** Neovim is not included in the Ubuntu script. Install it via Snap:
> ```bash
> sudo snap install nvim --classic
> ```

### 3. Symlink config files

```bash
make setup
```

This runs `stow config --dotfiles --target ~/` to symlink all configs into `~/.config`.

### 4. Append shell config

```bash
make bashrc
```

This appends the dotfiles `.bashrc` (custom aliases, PATH exports, etc.) to your `~/.bashrc`.

---

To remove all symlinks:

```bash
make remove
```

## Terminal Setup

The terminal of choice is [Ghostty](https://ghostty.org). The Ghostty config is symlinked automatically by `make setup` and uses:

- **Theme:** Catppuccin Mocha
- **Font:** Hack Nerd Font Mono (18pt)

### Font installation

Download `Hack Nerd Font` from https://www.nerdfonts.com and extract it to `/usr/share/fonts` for system-wide availability:

```bash
sudo cp -r Hack/ /usr/share/fonts/
fc-cache -fv
```

### Shell: Oh My Bash

Install **Oh My Bash** from https://ohmybash.nntoan.com. The theme used is `simple`.

### Tmux: Catppuccin theme

Install the Catppuccin theme for Tmux by following the instructions at https://github.com/catppuccin/tmux.

## Post Installation

Install the following development tools as needed:

1. Go
2. Flutter
3. Android command line tools & SDK
4. Docker
5. Node.js
6. AWS CLI
