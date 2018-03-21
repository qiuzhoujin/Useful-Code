# copy to /etc/bash.bashrc
ulimit -c unlimited
alias em='emacs -nw'
alias svnlog='svn up;svn log -l1 -v;'
alias gitst='git st -s'
alias gitci='git ci -a -m'
alias gitlog='git log --pretty="%h(%cd):%s"'
alias gitlogs='git log --pretty="%h(%cd):%s" --stat'
alias gitdiff='git difftool'
alias gitadd='git add *'
alias dirs='dirs -v'
alias vil='vi $(lf)'
export LESS="-x4 -s"
export EDITOR=vim
export PAGER='less -r'

# Toggle PS1.
ps1_bak=""
function chps1()
{
	if [ -z $ps1_bak ]; then
		ps1_bak=$PS1
		PS1="$ "
	else
		PS1=$ps1_bak
		ps1_bak=""
	fi
}

# Get the latest file in current directory.
function lf()
{
	ls -t | head -1
}
