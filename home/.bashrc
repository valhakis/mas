# If not running interactively, don't do anything
[[ $- != *i* ]] && return
export TERM="xterm-256color"
force_color_prompt=yes

#alias ls="ls --color "

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias svim="sudo -E vim "
alias so="source ~/.bashrc"
alias tree="tree -C"
alias so="source ~/.bashrc"
alias cal="cal -m"

function make_ps1()
{
  # local reset="\e[0m"
  # local blue="\e[94m"
  # local white="\e[97m"
  # local black="\e[90m"
  # local red="\e[91m"
  # local yellow0="\e[92m"
  # local yellow1="\e[93m"

  local reset="\[\033[0m\]"
  local black="\[\033[01;0;90m\]"
  local red="\[\033[01;0;91m\]"
  local green="\[\033[01;0;92m\]"
  local yellow="\[\033[01;0;93m\]"
  local blue="\[\033[01;0;94m\]"
  local purple="\[\033[01;0;95m\]"
  local white="\[\033[01;0;00m\]"
  local lightblue="\[\033[01;0;96m\]"

  # color=80
  # while [ $color -lt 100 ] ; do
  #   echo -e "$color: \\033[01;0;${color}mhello\\033[48;5;${color}mworld\\033[0m";
  #   ((color++));
  # done

  local UNAME="${red}\u${reset}"
  local HOST="${yellow}\h${reset}"
  local CDIR="${red}\W${reset}"
  local PATH="${purple}\w${reset}"
  export PS1="${black}[${reset} ${UNAME}@${HOST} | ${PATH} ${black}]${reset}\n> ${reset}"
}
make_ps1

export PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
export PATH="$HOME/app/bin:$PATH"
export PATH="$HOME/bin:$PATH"
# export PATH=$PATH:"$HOME/include"
# export C_INCLUDE_PATH=$C_INCLUDE_PATH:"$HOME/include"
# export CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:"$HOME/include"
# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:"$HOME/lib"
# export LIBRARY_PATH=$LIBRARY_PATH:"$HOME/lib"

# [ -f ~/.fzf.bash ] && source ~/.fzf.bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# export FZF_DEFAULT_COMMAND='ag -l -g ""'
# export TERM="xterm-color"

LS_COLORS=$LS_COLORS:'di=0;35:' ; export LS_COLORS

export MAIL=~/Maildir
#export MAIL=/var/spool/mail/ruudi
