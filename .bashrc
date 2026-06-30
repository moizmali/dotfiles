# ---------- Custom Configurations ----------

# Commands To Run Scripts
alias mspricer="/path/to/scripts/ms_pricer.sh"
alias mhp="/path/to/bw_mount_hybris.sh"
alias mhs="/path/to/bw_mount_hybris_staging.sh"

# GitHub Access Token
export GITHUB_TOKEN="github_token"

# Export Installed Go Binaries To Path Variable
export PATH=$PATH:$HOME/go/bin

# Neovim Alias
alias vim="nvim"

# Function to set AWS profile
aws-profile() {
    export AWS_PROFILE=$1
    echo "AWS Profile set to '$AWS_PROFILE'"
}

# Aliast TSesh & NSesh Scripts
alias ts="sh ~/Code/dotfiles/scripts/tsesh.sh"
alias ns="sh ~/Code/dotfiles/scripts/nsesh.sh"

# Android Command Line Tools
export PATH=$PATH:$HOME/Android/Sdk/cmdline-tools/latest/bin

# Mason Binary Path
export PATH=$PATH:$HOME/.local/share/nvim/mason/bin

# Update crush
alias crush-update="go install github.com/charmbracelet/crush@latest"

# AWS SSO Login
alias aws-login="aws sso login --sso-session=home24"

# Sentinel One Scan Check
alias sone-status="sudo sentinelctl scan status"

# ---------- Custom Configurations ----------
