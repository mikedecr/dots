# --------------------------------------------------
#  POSIXCT SHELL-AGNOSTIC
# --------------------------------------------------

# ----- aliases -----------

source $HOME/.config/aliases.sh


# ----- paths -----------

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


# ----- fetch ----------

# .config/macchina
# requires homebrew in PATH
macchina  

export EDITOR=$(which nvim)
export VISUAL=$EDITOR


# --------------------------------------------------
#  ZSH-SPECIFIC
# --------------------------------------------------

# ----- zsh builtin ----------

# todo: document me
setopt no_case_glob
setopt glob_complete


# ----- zap for zsh plugin mgmt -----------

[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"
# ^ automatically inserted by zap <https://github.com/zap-zsh/zap>
# uninstall: rm -rf ~/.local/share/zap

plug "zettlrobert/simple-prompt"
plug "zsh-users/zsh-completions"

# case insensitive completion
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting"

plug "esc/conda-zsh-completion"
zstyle ":conda_zsh_completion:*" show-global-envs-first true


# --------------------------------------------------
#  shell inits
# --------------------------------------------------

eval "$(direnv hook zsh)"

# .config/starship.toml
eval "$(starship init zsh)"


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


# not sure who did this...I'm going to guess uv
. "$HOME/.local/bin/env"
# why? contents of this dir:
#  env
#  env.fish
#  micromamba
#  uv
#  uvx
