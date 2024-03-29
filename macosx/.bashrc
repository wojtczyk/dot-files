export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad
export DYLD_FALLBACK_LIBRARY_PATH=$DYLD_FALLBACK_LIBRARY_PATH:/usr/local/lib

# MW brew's bash completion - e.g. brew install git bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# MW git info on command prompt
function parse_git_branch_and_add_brackets
{
	git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\ \[\1\]/'
}
PS1="\h:\W \u\[\033[0;32m\]\$(parse_git_branch_and_add_brackets)\[\033[0m\]\$ "

# MW aliases
alias gitlog="git log --oneline --graph --decorate --all"
alias gitclean="git clean -f -d"

# MW editor
export EDITOR=vim

# MW disable octave gui
alias octave=octave-cli 

export PATH=$HOME/bin:$HOME/usr/bin:/usr/local/bin:$PATH
# MW conda path
export PATH="/Users/mwojtczyk/usr/stow/miniconda3/bin:$PATH"
# MW use python cpp implementation of protobuf
export PROTOCOL_BUFFERS_PYTHON_IMPLEMENTATION=python
# MW silence the shell warning
export BASH_SILENCE_DEPRECATION_WARNING=1

# MW load secrets
source $HOME/.secrets

