# --- homebrew auto ---
# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"


# TODO relocate me
# ----- aliases and env vars ----------
source $HOME/.config/aliases.sh


# Preferred editor for local and remote sessions
export EDITOR='nvim'

# print system info
macchina

# ----- Julia ----------
export PATH='/Applications/Julia-1.7.app/Contents/Resources/julia/bin':$PATH


# ----- NVM ----------
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# ----- Haskell ----------
#[ -f "/Users/michaeldecrescenzo/.ghcup/env" ] && source "/Users/michaeldecrescenzo/.ghcup/env" # ghcup-env
export PATH=$PATH:"/opt/homebrew/opt/llvm/bin"
# export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
# export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"
[ -f "/Users/michaeldecrescenzo/.ghcup/env" ] && source "/Users/michaeldecrescenzo/.ghcup/env" # ghcup-env


# rc
# is this the best way??
if [ -f .bashrc ]; then
    source .bashrc
fi

