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

function make_ps1()
{
  local reset="\e[0m"
  local black="\e[90m"
  local red="\e[91m"
  local yellow0="\e[92m"
  local yellow1="\e[93m"
  local blue="\e[94m"
  local purple="\e[95m"
  local cyan="\e[96m"
  local white="\e[97m"

  local UNAME="${blue}\u${reset}"
  local HOST="${yellow1}\h${reset}"
  local CDIR="${red}\W${reset}"
  local PATH="${yellow1}\w${reset}"
  export PS1="${yellow1}[${reset} ${UNAME}@${HOST} | ${PATH} ${yellow1}]${reset}\n> ${reset}"
}
make_ps1

export PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
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
