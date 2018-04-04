export EDITOR="vim"
export TERMINAL="urxvt"
export BROWSER="chromium"

#stty -ixon
#shopt -s autocd #Allows you to cd into directory merely by typing the directory name.
#
## Setting Bash prompt. Capitalizes username and host if root user (my root user uses this same config file).
if [ "$EUID" -ne 0 ]
	then export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"
	else export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]ROOT\[$(tput setaf 2)\]@\[$(tput setaf 4)\]$(hostname | awk '{print toupper($0)}') \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"
fi

#Generic shortcuts:
alias music="ncmpcpp"
alias clock="ncmpcpp -s clock"
alias visualizer="ncmpcpp -s visualizer"
alias files="ranger"
alias chat="hexchat"
#alias audio="ncpamixer"
alias calender="calcurse"
alias getmail="offlineimap && notmuch new"
alias gm="offlineimap && notmuch new"

# System Maintenance
alias progs="pacman -Qet" # List programs I've installed
alias orphans="pacman -Qdt" # List orphan programs
#alias upgr="neofetch && sudo pacman -Syyu --noconfirm && echo Update complete. | figlet"
#aurinstall() { curl -O https://aur.archlinux.org/cgit/aur.git/snapshot/$1.tar.gz && tar -xvf $1.tar.gz && cd $1 && makepkg --noconfirm -si && cd .. && rm -rf $1 $1.tar.gz ;}
#alias psref="gpg-connect-agent RELOADAGENT /bye" # Refresh gpg

# Aliases
alias rm="rm -i"
alias p="sudo pacman"
alias v="vim"
alias sv="sudo vim"
alias r="ranger"
alias sr="sudo ranger"
alias ka="killall"
alias g="git"
alias gitup="git push origin master"
#alias mkd="mkdir -pv"
#alias rf="source ~/.bashrc"
alias bars="bash ~/.config/polybar/launch.sh" # Run Polybar relaunch script
#alias bw="wal -i ~/.config/wall.png" # Rerun pywal
weath() { curl wttr.in/$1 ;} # Check the weather (give city or leave blank).

# Adding color
alias ls='ls -hN --color=auto --group-directories-first'
alias ll='ls -hNal --color=auto --group-directories-first'
alias grep="grep --color=always" # Color grep - highlight desired sequence.
alias ccat="highlight --out-format=xterm256" #Color cat - print file with syntax highlighting.

# Laptop management
#alias lsc="screen.sh l" # Use laptop screen only
#alias vsc="screen.sh v" # Use VGA only
#alias dsc="screen.sh d" # Use both laptop and VGA screen
#alias debase="sudo umount /home/Shared/Videos & screen.sh l && i3 restart" # Prep for taking my ThinkPad off Ultrabase

# Internet
alias yt="youtube-dl --add-metadata -ic" # Download video link
alias yta="youtube-dl --add-metadata -xic" # Download only audio

# Audio and Music
#alias mute="pamixer -m"
#alias unmute="pamixer -u"
#alias vu="pamixer --allow-boost -i 5"
#alias vd="pamixer --allow-boost -d 5"
#alias pause="mpc toggle"
#alias next="mpc next"
#alias prev="mpc prev"
#alias trupause="mpc pause"
#alias beg="mpc seek 0%"
#alias lilbak="mpc seek -10"
#alias lilfor="mpc seek +10"
#alias bigbak="mpc seek -120"
#alias bigfor="mpc seek +120"
