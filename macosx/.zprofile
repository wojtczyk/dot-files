export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad

export PATH=$HOME/bin:/usr/local/bin:$PATH

eval "$(/opt/homebrew/bin/brew shellenv)"
export HOMEBREW_NO_ENV_HINTS=1

# MW zsh prompt with git branch
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ [\1]/'
}
setopt PROMPT_SUBST
PROMPT='%10F%n@%m%f:%11F%9c%{%F{green}%}$(parse_git_branch)%{%F{none}%} $ '

# MW enable zsh auto completion
autoload -Uz compinit && compinit
# MW zsh search within history
bindkey -v
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
