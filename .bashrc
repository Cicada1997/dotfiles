# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# alias ls='ls --color=auto'

PS1='\n\A \[\033[38;5;165m\]\u \[\033[38;5;213m\]\W \[\033[38;5;219m\]| \[\033[38;5;213m\]\$ \[\033[0m\]'

export EDITOR=nvim
export PYTHONPATH=/home/cicada/projects/py_PATH/

# ls() {
#     local prefix="_"
#     local match_lines rest_lines raw_line filename plain_filename stripped_filename
#     local name_part
#     local output
#
#     command -v exa >/dev/null 2>&1 || { echo "exa not found in PATH"; return 1; }
#
#     output=$(exa -l --group-directories-first --color=always "$@")
#
#     while IFS= read -r raw_line; do
#         name_part="${raw_line##* }"
#         plain_filename=$(echo "$name_part" | sed 's/\x1b\[[0-9;]*m//g')
#
#         if [[ "$plain_filename" == "$prefix"* ]]; then
#             stripped_filename="${plain_filename#$prefix}"
#             name_part_stripped="${name_part/$plain_filename/$stripped_filename}"
#             modified_line="${raw_line%$name_part}$name_part_stripped"
#             match_lines+="$modified_line"$'\n'
#         else
#             rest_lines+="$raw_line"$'\n'
#         fi
#     done <<< "$output"
#
#     if [[ -n "$match_lines" ]]; then
#         echo -e "\033[1;33m\t\t\t     ### PINNED ###\033[0m"
#         [[ -n "$match_lines" ]] && echo -n "$match_lines"
#         echo
#     fi
#
#     if [[ -n "$rest_lines" ]]; then
#         echo -e "\033[1;33m\t\t\t     ### FILES ###\033[0m"
#     fi
#     [[ -n "$rest_lines" ]] && echo -n "$rest_lines"
# }

# File tree
alias ls='exa -l'
alias lst='exa -l --total-size'
alias la='exa -la'
alias lag='exa -laG'
alias lg='exa -lGR --level=3'
alias lt='exa -T'

# Program remaps
alias paint='dibuja & disown'

# Utils
alias new='alacritty | pwd & disown'
alias grep='grep --color=auto'
alias bright='brightnessctl -d "intel_backlight"'
alias screen='xrandr --output HDMI-1-0 --mode 1920x1080 --rate 165 --left-of eDP-1 & /home/cicada/.config/polybar/launch.sh & disown'

# Kattbas
alias db='psql -h kattmys.se -p 5432 -U cicada -d kattmys'
alias bas='cd ~/projects/py_PATH/kattbas'
alias mys='cd ~/projects/kattmys'
