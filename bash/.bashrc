#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

PS1='[\u@\h: \W] \$ '

alias nv='nvim'

export PATH=$PATH:~/.local/bin

# RubyGems
PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
# Bundler
export GEM_HOME=$(ruby -e 'print Gem.user_dir')

#Setting the GEM_PATH and GEM_HOME variables may not be necessary, check 'gem env' output to verify whether both variables already exist 
 GEM_HOME=$(ls -t -U | ruby -e 'puts Gem.user_dir')
  GEM_PATH=$GEM_HOME
   export PATH=$PATH:$GEM_HOME/bin

# Ibus

export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

# Vi-like console
# set -o vi
# set editing-mode vi
# 
# $if mode=vi
#     set keymap vi-insert
#     "jj": vi-movement-mode
# $endif

#
source /etc/profile.d/autojump.bash
export PATH="$HOME/scripts:$PATH"

# sjl/t config
alias t='python2 ~/t/t/t.py --task-dir ~/t/tasks --list tasks'

# scrap archlinux.org before full upgrade
alias iscrap='~/git/iscrap/iscrap.sh'

# tatoeba-karini
alias ttbk='python ~/git/tatoeba-karini/tatoeba-karini.py'

# jisho-karini
alias jisho-karini='python ~/git/jisho-karini/jisho-karini.py'

# git-roulette
alias gtr='python ~/git/git-roulette/git-roulette.py'
