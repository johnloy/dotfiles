shopt -s expand_aliases

# export PS1="\[$(tput setaf 10;tput bold)\]Hulk Bash"\!"\[$(tput sgr0)\]\[$(tput setaf 202)\]✶\[$(tput sgr0)\]  "

# Setting the variable appends current session history to HISTFILE. Unsetting overwrites the file each time.
shopt -s histappend

# Puts a failed history substitution back on the command line for re-editing
shopt -s histreedit

# Puts the command to be executed after a substitution on command line as if you had typed it.
shopt -s histverify

# Causes multi-line commands to be saved with embedded newlines as a single history entry
shopt -s lithist

# Huge history. Doesn't appear to slow things down, so why not?
HISTSIZE=10000
HISTFILESIZE=10000

# Don't record some commands
HISTIGNORE="&:[ ]*:exit:ls:bg:fg:fc:history:clear:pwd:id:uptime:resize:asciinema:hh"

# Avoid duplicate entries
HISTCONTROL="erasedups:ignoreboth"

# Use standard ISO 8601 timestamp
# %F equivalent to %Y-%m-%d
# %T equivalent to %H:%M:%S (24-hours format)
HISTTIMEFORMAT='%F %T '


# Synchronize histories between different shell sessions
PROMPT_COMMAND='history -a ; history -n'

JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_211.jdk/Contents/Home

shopt -s cdspell
CDPATH=.:~:~/src:~/src/github.com/johnloy

export FZF_DEFAULT_COMMAND='ag -g .'


export GH_USER="$(yq e '."github.com".user' ~/.config/gh/hosts.yml)"
export GH_USER_REPOS="$(ghq root)"/github.com/"${GH_USER}"
myrepos="${GH_USER_REPOS}"
