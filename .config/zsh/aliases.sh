alias dots='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias dots-r='/usr/bin/git --git-dir=$HOME/.dotfiles_R/ --work-tree=$HOME'

# --- cmd line tools ---

# lazygit
alias lg="lazygit"
alias lg-dots='lazygit -g $HOME/.dotfiles -w $HOME'

# exa
alias ll="exa -l"
alias la='exa -la'
# alias ls="exa"
alias lh="exa -alh"
alias tree="exa --tree"

# alias cat="bat"

# --- R ---
alias r="radian"

# prevent R from doing any workspace nonsense
# alias R="R --no-save --no-restore"


