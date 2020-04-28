export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad

# MW git info on command prompt
function parse_git_branch_and_add_brackets
{
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\ \[\1\]/'
}
PS1="\u:\W\[\033[0;32m\]\$(parse_git_branch_and_add_brackets)\[\033[0m\]\$ "

# MW aliases
alias gitlog="git log --oneline --graph --decorate --all"
alias gitclean="git clean -f -d"

