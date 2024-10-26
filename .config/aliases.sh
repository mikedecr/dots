alias dots='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias dots-r='/usr/bin/git --git-dir=$HOME/.dotfiles_R/ --work-tree=$HOME'


alias cv="cd ~/.config/nvim"

# --- cmd line tools ---

# lazygit
alias lg="lazygit"
alias lg-dots='lazygit -g $HOME/.dotfiles -w $HOME'

# eza
alias ell="eza -l"
alias ela='eza -la'
alias els="eza"
alias elh="eza -alh"
alias et="eza --tree"

# alias cat="bat"
alias mamba="micromamba"
alias um="micromamba"
alias ma="micromamba activate"
alias ml="micromamba list"
alias mel="micromamba env list"
alias mer="micromamba env remove"
alias mec="micromamba env create"

# --- R ---
alias r="radian"

# prevent R from doing any workspace nonsense
# alias R="R --no-save --no-restore"

# --- python ---
alias ipy="ipython --no-autoindent"


