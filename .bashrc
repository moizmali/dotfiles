# Add this to the end of your ~/.bashrc file

# ---------- Custom Configurations ----------

# Commands To Run Scripts
alias mspricer="/path/to/scripts/ms_pricer.sh"
alias mhp="/path/to/bw_mount_hybris.sh"
alias mhs="/path/to/bw_mount_hybris_staging.sh"
# alias sso="/path/to/sso.sh"

# GitHub Access Token
export GITHUB_TOKEN="github_token"

# Export Installed Go Binaries To Path Variable
export PATH=$PATH:$HOME/go/bin

# Neovim Alias
alias vim="nvim"

# Alias VPN connections
alias vpn1="sudo openvpn --config /path/to/vpn1.ovpn --auth-user-pass /path/to/auth.txt"
alias vpn3="sudo openvpn --config /path/to/vpn3.ovpn --auth-user-pass /path/to/auth.txt"

# Set AWS Profile
awsprofile() {
    export AWS_PROFILE=$1
    echo "AWS Profile set to '$AWS_PROFILE'"
}

# Android Command Line Tools
export PATH=$PATH:$HOME/Android/Sdk/cmdline-tools/latest/bin

# ---------- Custom Configurations ----------
