# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# COMMON

set -o vi

#export TERM="xterm-256color"
export TERM="tmux-256color"
export _JAVA_AWT_WM_NONREPARENTING=1

alias mt='multitail -CS php'
alias xvim="vim -u ~/vim/vimrc"
alias svim="sudo -E vim "
alias so="source ~/.bashrc"
alias tree="tree -C"
alias so="source ~/.bashrc"
alias cal="cal -m"
alias cdwoocommerce="cd $HOME/xeven/xeven.icu/public/custom/wp-content/plugins/woocommerce"
alias cdvxstore="cd $HOME/xeven/xeven.icu/public/vxstore"
alias ls='ls --color=auto'

export GEM_HOME=$HOME/.gem
export PATH="$HOME/app/bin:$PATH"
export PATH="$HOME/red/bin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.config/composer/vendor/bin:$PATH"
export PATH="$HOME/.dotnet/tools:$PATH"
export PATH="$HOME/.bin:$PATH"
export PATH="$HOME/.config/bspwm:$PATH"
export NVM_DIR="$HOME/.nvm"
export HISTFILE="$HOME/doc/conf/.bash_history"
export MAIL=~/Maildir
export LS_COLORS=$LS_COLORS:'di=1;31:ow=1;33:'

# ex=5;31;

export VISUAL="vim"
export EDITOR="$VISUIAL"

PANEL_FIFO=/tmp/panel-fifo
PANEL_HEIGHT=24
PANEL_FONT="-*-fixed-*-*-*-*-10-*-*-*-*-*-*-*"
PANEL_WM_NAME=bspwm_panel
export PANEL_FIFO PANEL_HEIGHT PANEL_FONT PANEL_WM_NAME

#PANEL_FIFO=/tmp/panel-fifo
#PANEL_HEIGHT=24
#PANEL_FONT="-*-fixed-*-*-*-*-10-*-*-*-*-*-*-*"
#PANEL_WM_NAME=bspwm_panel
#export PANEL_FIFO PANEL_HEIGHT PANEL_FONT PANEL_WM_NAME


if [ "$HOSTNAME" = "server" ] ; then

  # SERVER
  export MAIL=~/Maildir

elif [ "$HOSTNAME" = "vrch" ] ; then

  export MAIL=~/Maildir

elif [ "$HOSTNAME" = "master" ] ; then

  force_color_prompt=yes
  PS1='[\u@\h \W]\$ '

elif [ "$HOSTNAME" = "slave" ] ; then

  force_color_prompt=yes
  PS1='[\u@\h \W]\$ '

elif [ "$HOSTNAME" = "arch" ] ; then

  export PATH="$PATH:$(ruby -e 'print Gem.user_dir')/bin"
  export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git --exclude node_modules --exclude vendor --exclude bower_components --exclude .PlayOnLinux'

else

  # OTHER
  force_color_prompt=yes
  PS1='[\u@\h \W]\$ '

  # LS_COLORS=$LS_COLORS:'di=1;31:' ; export LS_COLORS

fi

#alias ls="ls --color "

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
  local black="\[\033[01;1;90m\]"
  local red="\[\033[01;1;91m\]"
  local green="\[\033[01;0;92m\]"
  local yellow="\[\033[01;0;93m\]"
  local blue="\[\033[01;0;94m\]"
  local purple="\[\033[01;0;95m\]"
  local white="\[\033[01;1;00m\]"
  local lightblue="\[\033[01;0;96m\]"

  local test="\[\033[01;1;90m\]"

  # color=80
  # while [ $color -lt 100 ] ; do
  #   echo -e "$color: \\033[01;0;${color}mhello\\033[48;5;${color}mworld\\033[0m";
  #   ((color++));
  # done

  local UNAME="${red}\u${reset}"
  local HOST="${yellow}\h${reset}"
  local CDIR="${red}\W${reset}"
  local PATH="${test}\w${reset}"

  if [ "$HOSTNAME" = "vrch" ] ; then
    local UNAME="${purple}\u${reset}"
    local HOST="${blue}\h${reset}"
  elif [ "$HOSTNAME" = "server" ] ; then
    local UNAME="${lightblue}\u${reset}"
    local HOST="${blue}\h${reset}"
  fi

  export PS1="${black}[${reset} ${UNAME}@${HOST} ${black}<${reset} ${PATH} ${black}]${black}\n> ${reset}"
}
make_ps1

# export PATH=$PATH:"$HOME/include"
# export C_INCLUDE_PATH=$C_INCLUDE_PATH:"$HOME/include"
# export CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:"$HOME/include"
# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:"$HOME/lib"
# export LIBRARY_PATH=$LIBRARY_PATH:"$HOME/lib"
# [ -f ~/.fzf.bash ] && source ~/.fzf.bash
# export FZF_DEFAULT_COMMAND='ag -l -g ""'
# export TERM="xterm-color"
#export MAIL=/var/spool/mail/ruudi
# export XDG_CONFIG_HOME="$HOME/.config"

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

PATH="/home/ruudi/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/ruudi/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/ruudi/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/ruudi/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/ruudi/perl5"; export PERL_MM_OPT;
