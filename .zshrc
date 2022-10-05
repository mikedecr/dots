
# Path to oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# more themes: https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME='lambda'

# command auto-correction.
ENABLE_CORRECTION="true"

# display visual dots while awaiting completion
COMPLETION_WAITING_DOTS="true"

# mark untracked files as dirty, "true" would make big repos faster
DISABLE_UNTRACKED_FILES_DIRTY="false"

# can use another folder for configs other than $ZSH/custom
# ZSH_CUSTOM=/path/to/new-custom-folder

# Std plugins found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git colored-man-pages)

source $ZSH/oh-my-zsh.sh

# --------------------------------------------------
#  User configuration
# --------------------------------------------------

# print system info
pfetch


# export MANPATH="/usr/local/man:$MANPATH"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Override aliases provided by oh-my-zsh libs, plugins, and themes. 
# For a full list of active aliases, run `alias`.
source $HOME/.config/aliases.sh


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
