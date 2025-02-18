

setopt AUTO_CD # If the command is not found, but matches a directory, then cd to it.
setopt AUTO_PUSHD # Make cd push the old directory onto the directory stack.

setopt BEEP
setopt CHASE_DOTS
setopt EXTENDED_GLOB

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

setopt APPEND_HISTORY            # append to history file
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt EXTENDED_HISTORY          # Write the history file in the ':start:elapsed;command' format.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_NO_STORE             # Don't store history commands
setopt HIST_IGNORE_ALL_DUPS      # Delete an old recorded event if a new event is a duplicate.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire a duplicate event first when trimming history.
setopt HIST_IGNORE_DUPS          # Do not record an event that was just recorded again.
setopt HIST_FIND_NO_DUPS         # Do not display a previously found event.
setopt HIST_IGNORE_SPACE         # Do not record an event starting with a space.
setopt HIST_SAVE_NO_DUPS         # Do not write a duplicate event to the history file.
setopt HIST_VERIFY               # Do not execute immediately upon history expansion.

setopt NO_MATCH

# Emulate vim motions on cli
bindkey -v

bindkey -s "^r" "hstr\n"

# Ensure these variables are unique arrays, removing any duplicates.
typeset -U path cdpath fpath

cdpath=(~ ~/src ~/src/github.com/johnloy)

# zstyle ':completion:*' group-name ''
# zstyle ':completion:*:descriptions' format %d
# zstyle ':completion:*:descriptions' format %B%d%b
# zstyle ':completion:*:complete:(cd|pushd):*' tag-order \
#         'local-directories named-directories'

