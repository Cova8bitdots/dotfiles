source ~/.profile



######################################################
## ALIAS
######################################################

# ls
if [ "$(uname)" = 'Darwin' ]; then
	export LSCOLORS=gEfxcxdxbxegedabagacad
	alias ls='ls -FG'
	alias l='ls -FG'
	alias ll='ls -lFG'
	alias la='ls -FGla'
else
    eval `dircolors ~/.colorrc`
    alias ls='ls --color=auto'
fi


# rm
alias rm='rm -i'


######################################################
## Git Completion
######################################################
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /Library/Developer/CommandLineTools/usr/share/git-core/git-completion.bash

if type __git_ps1 > /dev/null 2>&1 ; then
	GIT_PS1_SHOWDIRTYSTATE=true
	GIT_PS1_SHOWSTASHSTATE=true
	GIT_PS1_SHOWUNTRACKEDFILES=true
	GIT_PS1_SHOWUPSTREAM="auto"
	GIT_PS1_SHOWCOLORHINTS=true
	export PS1='\[\e[32m\w\e[0m\] $(__git_ps1 "\e[31m[\e[0mBranch:\e[31m%s]\e[0m")\n\[\u@\h\]\$ '

fi


