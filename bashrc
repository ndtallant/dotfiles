##### FUNCTIONS #####

# Passed arguments are refered to by their position (not by name), 
# that is $1, $2, and so forth. $0 is the name of the script itself.

snake() {
    echo $1 | tr [:upper:] [:lower:] | tr ' ' '_'
}


# Thanks for the idea https://meyerweb.com/
please() {
	if [ "$1" ]; then
		sudo $@
	else
		sudo "$BASH" -c "$(history -p !!)"
	fi
}

##### ALIASES #####

# Aliases are like macros. 
# If you often find yourself executing a certain command 
# with the same parameters (or a part of it), you can define 
# an alias for this.

alias l=ls
alias ll='ls -l'
alias jpn='jupyter notebook'
alias python=python3
alias ipython=ipython3
alias py38='source ~/.venvs/py38/bin/activate'
alias py27='source ~/.venvs/py27/bin/activate'
alias brew='arch -x86_64 brew'
alias gs='git status'
alias gitnvm='git reset --soft HEAD~1'
alias gitfix='git add -A && git commit --amend --no-edit'
