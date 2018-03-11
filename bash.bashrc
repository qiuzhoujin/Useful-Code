# copy to /etc/bash.bashrc
export PAGER='less -r'
alias gitst='git st -s'
alias gitci='git ci -a -m'
alias gitlog='git log --pretty="%h(%cd):%s"'
alias gitlogs='git log --pretty="%h(%cd):%s" --stat'
alias gitdiff='git difftool'
alias gitadd='git add *'
export LESS="-x4 -s"
export EDITOR=vim

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
