# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory extendedglob notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/felix/.zshrc'

autoload -Uz compinit
compinit
# End of lines configured by compinstall

setopt correctall


autoload -Uz promptinit
promptinit


autoload -U colors zsh/terminfo # Used in the colour alias below
colors
export CLICOLOR=1




autoload -Uz vcs_info
zstyle ':vcs_info:*' actionformats "%{$fg[yellow]%}%b%{$reset_color%} (%{$fg[red]%}%a%{$reset_color%}) %m%u%c%{$reset_color%}%{$fg[grey]%}%{$reset_color%}"
zstyle ':vcs_info:git*' formats "%{$reset_color%}- %{$fg[cyan]%}%b%{$reset_color%}%m%u%c%{$reset_color%}%{$fg[grey]%}%{$reset_color%} "
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{3}%r'
zstyle ':vcs_info:*' stagedstr "%{$fg[green]%}+%{$reset_color%}"
zstyle ':vcs_info:*' unstagedstr "%{$fg[red]%}+%{$reset_color%}"
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' enable git svn
precmd() {
  vcs_info
}

#local prompt_with_exit_status="%(?,%{$fg[green]%}%#%{$reset_color%},%{$fg[red]%}%#%{$reset_color%})"
setopt prompt_subst
#PROMPT='${vcs_info_msg_0_}
#${prompt_with_exit_status} '

#PS1=$'%{\e[0;32m%}%n%{\e[0;36m%}@%{\e[0;32m%}%m%{\e[0;0m%}:%{\e[0;34m%} %/ ${vcs_info_msg_0_}\n%{\e[0;0m%}%# '
PS1=$'%{\e[0;32m%}%n%{\e[0;0m%}:%{\e[0;34m%} %/ ${vcs_info_msg_0_}\n%{\e[0;0m%}%# '




# Aliases
alias ls='ls -G'
# alias dir='dir --color=auto'
# alias vdir='vdir --color=auto'

# alias grep='grep --color=auto'
# alias fgrep='fgrep --color=auto'
# alias egrep='egrep --color=auto'

alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
alias gs='git status'

# Local bin
export PATH=$PATH:/Users/felix/bin

# Git prompt
source ~/.git-prompt.sh

#precmd () { __git_ps1 "%n" ":%~$ " "|%s" }


