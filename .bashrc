# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# alias ls='ls --color=auto'

PS1='\n \A \[\033[38;5;165m\]\u \[\033[38;5;213m\]\W \[\033[38;5;219m\]| \[\033[38;5;213m\]\$ \[\033[0m\]'

export EDITOR=nvim
export PYTHONPATH=/home/cicada/dev/
export PATH="~/.npm-global/bin:$PATH"


# File tree
alias ls="eza -lh"
alias lst="eza -lh --total-size"
alias la="eza -lha"
alias lag="eza -laG"
alias lg="eza -lhGR --level=3"
alias lt="eza -T --level=3"

# Program remaps
alias paint="dibuja & disown"

# Utils
alias bt="bluetuith"
alias cls="clear"
alias new="alacritty | pwd & disown "
alias grep="grep --color=auto"
alias bright="brightnessctl -d \"intel_backlight\""
alias screen="xrandr --output HDMI-1-0 --mode 1920x1080 --rate 165 --left-of eDP-1 & /home/cicada/.config/polybar/launch.sh & disown"
alias asdf="sway --unsupported-gpu"

# local webserver
alias flaskctl="journalctl -u flask-app -f"
alias flaskrst="sudo systemctl daemon-reload & sudo systemctl restart flask-app"

# ESP32
alias esp="ampy --port /dev/ttyACM0"

# Kattbas
alias db="psql -h kattmys.se -p 5432 -U cicada -d kattmys"
alias bas="cd ~/dev/python/kattbas"
alias mys="cd ~/dev/kattsida/kattmys"

[ -s "/home/cicada/.jabba/jabba.sh" ] && source "/home/cicada/.jabba/jabba.sh"
