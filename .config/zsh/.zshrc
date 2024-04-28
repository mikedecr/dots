[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"

# ^ automatically inserted by zap <https://github.com/zap-zsh/zap>
# uninstall: rm -rf ~/.local/share/zap

# --------------------------------------------------
#  User configuration
# --------------------------------------------------

# ----- zsh builtin ----------

# todo: document me
setopt no_case_glob
setopt glob_complete

# ----- zap plugins ----------

plug "zettlrobert/simple-prompt"
plug "zsh-users/zsh-completions"

# case insensitive completion
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting"

plug "esc/conda-zsh-completion"
zstyle ":conda_zsh_completion:*" show-global-envs-first true

# --- homebrew auto ---
# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"

# ----- aliases and env vars ----------
source $HOME/.config/zsh/aliases.sh

# Preferred editor for local and remote sessions
export EDITOR='nvim'

# print system info
macchina

# ----- Julia ----------
export PATH='/Applications/Julia-1.7.app/Contents/Resources/julia/bin':$PATH


# >>> mamba initialize >>>
# !! Contents within this block are managed by 'mamba init' !!
export MAMBA_EXE='/Users/michaeldecrescenzo/.local/bin/micromamba';
export MAMBA_ROOT_PREFIX='/Users/michaeldecrescenzo/micromamba';
__mamba_setup="$("$MAMBA_EXE" shell hook --shell zsh --root-prefix "$MAMBA_ROOT_PREFIX" 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__mamba_setup"
else
    alias micromamba="$MAMBA_EXE"  # Fallback on help from mamba activate
fi
unset __mamba_setup
# <<< mamba initialize <<<


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

