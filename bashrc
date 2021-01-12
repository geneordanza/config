#!/bin/bash
# User-specific environment and startup programs
# ----------------------------------------------

# Set bash environment to use vi
set -o vi

# Set the default editor to Vim (for mutt/cron/etc programs)
export EDITOR=vim

# Set the size of history of previous command to 15,000
export HISTSIZE=15000
export HISTFILESIZE=15000

# Don't put duplicate lines in the history
export HISTCONTROL=ignoredups:ignoreboth:erasedups

# Ignore successive duplicate entries
#export HISTCONTROL=ignoreboth

# Ignore in history file
export HISTIGNORE="&:c:cls:ls:exit:ll:history:reloadrc:gtdList"

# Auto-corrent minor typos in spelling directory in 'cd' command
shopt -s cdspell

# Ignore case for filenames
shopt -s nocaseglob

export TERM=xterm-color

# export PATH
export PATH=$PATH:~/.bin

# Custom Environment variable - use mainly for quick scp'ing
paolo='geneordanza@paolo:/Users/geneordanza'
vm='gene@centos7:/home/gene'
clark='gene@clark:/home/gene'
mbp='geneordanza@mac:/Users/geneordanza'

# Variable for main directories
DOCUMENTS="$HOME/Documents"
DOWNLOADS="$HOME/Downloads"
BOOKS="$DOCUMENTS/Books"
MUSIC="$HOME/Music"
PUBLIC="$HOME/Public"
GITREPO="$DOCUMENTS/gitrepo"
temp="$PUBLIC/temp"

# Commonly-used commands
alias ..='cd ..;c;ls'
alias c=clear
alias cdc='cd;c'
alias cls='clear;ls -G'
alias ll='clear;ls -l'
alias cll='clear;ls -l'
alias nls='c;ls | nl'
alias view='c;vi -R '
alias cvi='c;vi'
alias music='cd $MUSIC/Selected_Music/;cls'
alias cdate='c;cal;date'
alias ws='c;cd $HOME/WorkSpace'
alias delete-text="c;vi $PUBLIC/delete.txt"

# Applications shortcut
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'

# === Commonly-accessed files  ===
VIMDIR="$HOME/.vimdir"
VIMREPO="$GITREPO/config/vimdir"
alias vab="c;vi $VIMREPO/abbrevs.vim"
alias vac="c;vi $VIMREPO/ab-css.vim"
alias vad="c;vi $VIMREPO/ab-docker.vim"
alias vah="c;vi $VIMREPO/ab-html.vim"
alias vaj="c;vi $VIMREPO/ab-javascript.vim"
alias vap="c;vi $VIMREPO/ab-python.vim"
alias vam="c;vi $VIMREPO/mapping.vim"
alias vav="c;vi $VIMREPO/vfunctions.vim"
alias vimdir="c; cd $VIMREPO; cls"
alias vihelp="c;view $VIMREPO/vimrc-cheatsheet"

# Git-related
alias gitdata='cd $GITREPO/data;cls -G'
alias gitrepo='cd $GITREPO;cls -G'
alias vimrepo='cd $VIMREPO;cls -G'


GITCONFIG="$GITREPO/config"
alias vimrc="c;vi $GITCONFIG/vimrc"
alias bashrc="c;vi $GITCONFIG/bashrc"
alias bashrcdiff="c;vimdiff $HOME/.bashrc $GITCONFIG/bashrc"
alias vimrcdiff="c;vimdiff $HOME/.vimrc $GITCONFIG/vimrc"

GITDATA="$GITREPO/data"
#alias cwg="c;vi -c 'set cursorline' $GITREPO/CwG-Stoic_Practice.txt"
alias cwg="c;vi $GITREPO/CwG-Stoic_Practice.txt"
alias inbasket="c;vi $GITREPO/gtdList.txt"
alias pinfo="c;vi $GITDATA/personalinfo.geneordanza.txt"
alias finfo="c;vi $GITDATA/financialinfo.geneordanza.txt"
alias notepad="c;vi $GITREPO/notepad.txt"
alias expenses="c;vi $GITREPO/expenses-2021.txt $GITREPO/daily-activities-2021.txt"
alias daily_tracker="c;vi $GITREPO/daily-activities-2021.txt $GITREPO/expenses-2021.txt"

GITNOTES="$GITREPO/notes"
alias technotes="c;vi $GITNOTES/Technical/TechNotes.txt"

GITQUOTES="$GITNOTES/Quotes"
alias qgen="c;vi $GITQUOTES/general_quote.txt"
alias qtech="c;vi $GITQUOTES/technical_quote.txt"


# === Bookmarks  ===
function documents() { cd $DOCUMENTS; cls; }
function downloads() { cd $DOWNLOADS/; cls; }
function public() { cd $PUBLIC/; cls; }
function books() { cd $BOOKS; cls; }
function tvshows() { cd $DOWNLOADS/TV_SHOWS; cls; }
function movies() { cd $DOWNLOADS/MOVIES; cls; }
function javascript() { cd $BOOKS/JavaScript; cls; }
function quotes() { cd $GITQUOTES; cls; }
function pron() { cd $DOCUMENTS/.Pron; cls; }
function mp3() { cd $MUSIC/Selected_Music; cls; }
function technotesdir() { cd $GITNOTES/Technical; cls; }
function vimrepo() { cd $VIMREPO; cls; }


# === Utilities ===

# Bash Utilities: Set default prompt (PS1)
PLATFORM=`uname`
if [[ "$PLATFORM" == 'Darwin' ]]; then
    PS1="gene@mac \w > "

elif [[ -f $HOME/.clark ]]; then
    PS1="gene@clark \w > "

elif [[ -f $HOME/.vm-centos7 ]]; then
    PS1="gene@c7 \w > "
fi

# Bash Utilities: Connect to other local devices
function connecto() {
  if [ $# == 0 ]; then
    echo "No argument provided; you need to specify a hostname/IP"

  elif [ $1 == 'clark' ]; then  # connect to Clark-Centos7 VM
    ssh -t gene@clark

  elif [ $1 == 'paolo' ]; then  # connect to Paolo's Macbook
    ssh -t geneordanza@paolo

  elif [ $1 == 'vm' ]; then     # connect to local vm
    ssh -t gene@centos7

  elif [ $1 == 'mac' ]; then     # connect back to macbook pro
    ssh -t geneordanza@mac

  elif [ $1 == 'aws' ]; then    # connect to AWS EC2 instance
    host=$2
    user=ec2-user
    KEYDIR="$BOOKS/AWS/KeyPairs"
    ssh -i "$KEYDIR/AWSuserGeneKey-SG.pem" -t $user@$host

  fi
}

# Bash Utilities: Move up the directory three nth times
function cdn() {
  cmd=""
  for ((i=0; i < $1; i++))
  do
    cmd="$cmd../"
  done
  # To revert back to previous directory; cd -
  cd "$cmd"
}

# Bash Utilities: Handy calculator in CLI
function calc() {
  echo "$*" | bc -l;
}

# Bash Utilities: Syncing local .bashrc and .vimrc with the repo version
function reloadrc() {
  cp $GITCONFIG/bashrc $HOME/.bashrc
  source $HOME/.bashrc
  echo "syncing ~/.bashrc ... done"
  cp $GITCONFIG/vimrc $HOME/.vimrc
  echo "syncing ~/.vimrc ... done"
}

# Bash Utilities: Check for modification between local config and repo version
function checkrc() {
  if diff $HOME/.bashrc $GITCONFIG/bashrc 1>/dev/null; then
    echo "bashrc config is syncronize"
  else
    echo "bashrc config was modified, run bashrcdiff!"
  fi

  if diff $HOME/.vimrc $GITCONFIG/vimrc 1>/dev/null; then
    echo "vimrc config is syncronize"
  else
    echo "vimrc config was modified, run vimrcdiff!"
  fi
}

# Git Utilities: Custom "git status" command
function gitstat() {
  gitrepo;
  echo;
  git st | head -n 2;
  git st -s;
  echo
  cd -
}

# AWS Utilities: Connect to AWS EC2 instance
function awsconnect() {
    USER=ec2-user
    KEYDIR="$BOOKS/AWS/KeyPairs"
    cd $BOOKS/AWS/KeyPairs;
    ssh -i "$KEYDIR/AWSuserGeneKey-SG.pem" -t $USER@$1
}

# Docker Utilities: Show all Docker images
function dkshowimages() {
    c;docker images -a
}

# Docker Utilities: Show all running containers
function dkshowcontainers() {
    c;docker ps -a
}

# Docker Utilities: Stop all running containers
function dkstopall() {
    echo "Stopping all running containers:"
    docker stop `docker ps -q`
}

# Docker Utilities: Delete all Docker containers
function dkrmall() {
    echo "Deleting the following Docker containers:"
    docker rm `docker ps -a -q`
}

# Quick remote copy command
function rcopyto() {
#   scp $2 gene@$1:/home/gene
  if [ $1 == 'clark' ]; then
    scp $2 gene@$1:/home/gene

  elif [ $1 == 'mac' ]; then  # connect to Clark-Centos7 VM
    scp $2 geneordanza@mac:/Users/geneordanza

  elif [ $1 == 'vm' ]; then
    scp $2 gene@centos7:/home/gene

  fi
}

function rcopyfrom() {
#   scp gene@$1:/home/gene/$2 .

  if [ $1 == 'clark' ]; then
    scp gene@$1:/home/gene/$2 .

  elif [ $1 == 'vm' ]; then
    scp gene@centos7:/home/gene/$2 .

  fi
}

function grepdaily() {
  echo
  if [[ "$1" -eq 2018 || "$1" -eq 18 ]]; then
    echo "Year 2018:"
    grep -i $2 $GITDATA/daily-activities-2018.txt
  elif [[ "$1" -eq 2019 || "$1" -eq 19 ]]; then
    echo "Year 2019:"
    grep -i $2 $GITDATA/daily-activities-2019.txt
  elif [[ "$1" -eq 2020 || "$1" -eq 20 ]]; then
    echo "Year 2020:"
    grep -i $2 $GITDATA/daily-activities-2020.txt
  else
    grep -i $1 $GITREPO/daily-activities-2021.txt
  fi
  echo
}

function grepexpense() {

  clear
  echo
  grep -i $1 $GITREPO/expenses-2021.txt
  echo
}

# =========================
# -- Temp cd directories --
# Sample Source Code for Books
MongoDB="MongoDB/Source Code Files/Sample Code"
function samplecode() { cd "$BOOKS/$MongoDB/7306OS_05_Code/"; cls ; }


# resume broken scp transfer
alias resumescp='rsync --partial --progress --rsh=ssh'

alias vimcheat="vi $VIMREPO/vimrc-cheatsheet"
