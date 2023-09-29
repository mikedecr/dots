
# ---- XDG setup ----

# this may be noop right now;
# I don't have other scripts that touch it
export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state


# ---- zshell ----

export ZDOTDIR=$HOME/.config/zsh


eval "$(/opt/homebrew/bin/brew shellenv)"
