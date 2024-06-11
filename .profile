# --- PATHS ---

# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# julia
export PATH='/Applications/Julia-1.7.app/Contents/Resources/julia/bin':$PATH

# node
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# HASKELL
[ -f "/Users/michaeldecrescenzo/.ghcup/env" ] && source "/Users/michaeldecrescenzo/.ghcup/env"
export PATH=$PATH:"/opt/homebrew/opt/llvm/bin"
# export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
# export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"

# rust btw
. "$HOME/.cargo/env"


# --- posixct customizations ---

export EDITOR='nvim'

source $HOME/.config/aliases.sh

# fetch
# macchina

# choose your character (shell)
# is this the best way??
if [ -f .bashrc ]; then
    source .bashrc
fi

. "$HOME/.cargo/env"
