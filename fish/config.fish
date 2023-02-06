set fish_greeting

# ---------------------
# environment variables
# ---------------------
if [ -f $HOME/.config/fish/env.fish ]
    source $HOME/.config/fish/env.fish
end

# -------
# aliases
# -------
if [ -f $HOME/.config/fish/alias.fish ]
    source $HOME/.config/fish/alias.fish
end

