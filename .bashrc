# mac is warning about zsh being default shell even when I set it to bash
# so I tell it to hushhhh
export BASH_SILENCE_DEPRECATION_WARNING=1

eval "$(direnv hook bash)"

eval "$(starship init bash)"


# >>> mamba initialize >>>
# !! Contents within this block are managed by 'mamba init' !!
export MAMBA_EXE='/Users/michaeldecrescenzo/.local/bin/micromamba';
export MAMBA_ROOT_PREFIX='/Users/michaeldecrescenzo/micromamba';
__mamba_setup="$("$MAMBA_EXE" shell hook --shell bash --root-prefix "$MAMBA_ROOT_PREFIX" 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__mamba_setup"
else
    alias micromamba="$MAMBA_EXE"  # Fallback on help from mamba activate
fi
unset __mamba_setup
# <<< mamba initialize <<<



macchina
