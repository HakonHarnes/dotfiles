set fish_greeting

# for tmux/zellij
set fish_cursor_default block
set fish_cursor_insert line
set fish_cursor_replace_one underscore
set fish_cursor_visual block

# -------------------
# auto start Hyprland
# -------------------
if test -z "$DISPLAY" -a (tty) = /dev/tty1
    Hyprland
end
