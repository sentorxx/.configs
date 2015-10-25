# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt extendedglob notify
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/sentor/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# use colors from zsh e.g. in the prompt 
autoload -U colors
colors 

# with that tab expansion is colored 
zmodload -i zsh/complist
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# process completion on kill command 
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01'

# some completions needs caching ... dpkg 
zstyle ':completion::complete:*' use-cache 1
zstyle ':completion::complete:*' cache-path ~/.zsh.d/cache/     

# browse through the completion entries 
zstyle ':completion:*' menu select

# dircolors comes from here https://github.com/seebi/dircolors-solarized 
eval `dircolors ~/.dircolors`

### prompt
PS1="%{$fg_bold[green]%}%n%{$reset_color%}@%m:%{$fg[blue]%}%~%{$reset_color%}> "

### aliase
# coloring the main commands  
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias less='less -R'
