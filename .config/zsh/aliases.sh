alias dots='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias dots-r='/usr/bin/git --git-dir=$HOME/.dotfiles_R/ --work-tree=$HOME'

# --- cmd line tools ---

alias ll="exa -l"
alias la='exa -la'
alias lg="lazygit"
alias lg-dots='lazygit -g $HOME/.dotfiles -w $HOME'

alias cat="bat"
alias ls="exa"
alias ll="exa -alh"
alias tree="exa --tree"


# --- R ---

# from radian repo (could be outdated...)
# alias radian="~/Library/Python/3.7/bin/radian"
# alias radian="/opt/homebrew/Caskroom/miniconda/base/bin/radian"
alias r="radian"

# prevent R from doing any workspace nonsense
# alias R="R --no-save --no-restore"


