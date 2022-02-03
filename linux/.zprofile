export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad
alias ls='ls --color=auto'
alias grep='grep --color=auto'

export PATH=$HOME/bin:/usr/local/bin:$PATH

# MW zsh prompt
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ [\1]/'
}
setopt PROMPT_SUBST
PROMPT='%10F%n@%m%f:%11F%9c%{%F{green}%}$(parse_git_branch)%{%F{none}%} $ '
# MW zsh enable history search
bindkey '^R' history-incremental-search-backward

# MW aliases
alias gitlog="git log --oneline --graph --decorate --all"
alias gitclean="git clean -f -d"
# MW disable octave gui
alias octave=octave-cli 

# MW editor
export EDITOR=vim

# MW use python cpp implementation of protobuf
export PROTOCOL_BUFFERS_PYTHON_IMPLEMENTATION=cpp

# MW load secrets
source $HOME/.secrets
