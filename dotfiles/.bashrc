### FUNCTIONS ###

# Passed arguments are refered to by their position (not by name), 
# that is $1, $2, and so forth. $0 is the name of the script itself.

### ALIASES ###

# Aliases are like macros. 
# If you often find yourself executing a certain command 
# with the same parameters (or a part of it), you can define 
# an alias for this.

alias l=ls
alias python=python3
alias ipython=ipython3
alias py36='source ~/.pyenvs/py36/bin/activate'
alias py27='source ~/.pyenvs/py27/bin/activate'
alias py_webdev='source ~/.pyenvs/py_webdev/bin/activate'
alias py_data='source ~/.pyenvs/py_data/bin/activate'


### ENVIRONMENT ###
export JAVA_HOME=/usr/java/jre1.8.0_181/
export ANDROID_HOME=~/Android/Sdk/


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/nick/.sdkman"
[[ -s "/home/nick/.sdkman/bin/sdkman-init.sh" ]] && source "/home/nick/.sdkman/bin/sdkman-init.sh"
