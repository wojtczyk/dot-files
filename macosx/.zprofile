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
# MW rust stuff
source "$HOME/.cargo/env"
# MW xz defaults: use all cores during compression
# doesn't seem to be honored by tar :/
export XZ_DEFAULTS='-T0'
export XZ_OPT='-T0'
export TAR_WRITER_OPTIONS=threads=8

# MW custom conda init on demand
init_conda_m1() {
  # >>> conda initialize >>>
  # !! Contents within this block are managed by 'conda init' !!
  conda_path="/usr/local/stow/miniconda3-m1"
  __conda_setup="$('${conda_path}/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
  if [ $? -eq 0 ]; then
      eval "$__conda_setup"
  else
      if [ -f "${conda_path}/etc/profile.d/conda.sh" ]; then
          . "${conda_path}/etc/profile.d/conda.sh"
      else
          export PATH="${conda_path}/bin:$PATH"
      fi
  fi
  unset __conda_setup
  # <<< conda initialize <<<
}

# MW pycharm path
export PATH=$PATH:"/Users/martin/Applications/PyCharm CE.app/Contents/MacOS"
