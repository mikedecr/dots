[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"

# ^ automatically inserted by zap <https://github.com/zap-zsh/zap>
# uninstall: rm -rf ~/.local/share/zap
#

# --------------------------------------------------
#  User configuration
# --------------------------------------------------

# --- homebrew auto ---
# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"

# starship prompt
# eval "$(starship init zsh)"

# aliases

# zsh helpers
# fpath=($HOME/tools/zsh-completions/src $fpath)


# Preferred editor for local and remote sessions
export EDITOR='nvim'

# print system info
pfetch

plug "zsh-users/zsh-completions"
plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting"
plug "esc/conda-zsh-completion"
plug "zettlrobert/simple-prompt"
# plug "MAHcodes/distro-prompt"


# ----- Julia ----------

export PATH='/Applications/Julia-1.7.app/Contents/Resources/julia/bin':$PATH

# ----- Conda auto ----------

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup

if [ -f "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/mamba.sh" ]; then
    . "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/mamba.sh"
fi
# <<< conda initialize <<<


# ----- NVM ----------

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# ----- Haskell ----------
#
[ -f "/Users/michaeldecrescenzo/.ghcup/env" ] && source "/Users/michaeldecrescenzo/.ghcup/env" # ghcup-env
export PATH=$PATH:"/opt/homebrew/opt/llvm/bin"
# export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
# export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"
#
