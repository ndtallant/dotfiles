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

rando() {
  xxd -l 12 -c 32 -p < /dev/random
}

##### ALIASES #####

# Aliases are like macros. 
# If you often find yourself executing a certain command 
# with the same parameters (or a part of it), you can define 
# an alias for this.

alias l=ls
alias ll='ls -l'
alias jpn='jupyter notebook'
alias gs='git status'
alias gitnvm='git reset --soft HEAD~1'
alias gitfix='git add -A && git commit --amend --no-edit'
alias mkvenv='python3 -m venv venv'
alias sv='source venv/bin/activate'
alias dv='deactivate'
alias :x='exit' # Vim is life

