# Dotfiles
Personal dotfiles for Linux


## i3 Icon Installation Steps:

Download Release Version: <https://github.com/FortAwesome/Font-Awesome>

```sh
mkdir ~/.fonts
cp -v fontawesome-webfont.ttf ~/.fonts
```
Visit <http://fontawesome.io/cheatsheet/>

Copy and paste icon into i3.conf


## SELinux Functions:
Add to .bashrc:
```sh
export POLICY_LOCATION=/usr/share/selinux/devel
source $HOME/.selinux-functions.sh
```

## Bash Prompt:
```sh
source ~/.git-prompt.sh
PS1='[\u@\[\e[36m\]\h\[\e[m\] \W$(__git_ps1 " (%s)")]\$ '
```
