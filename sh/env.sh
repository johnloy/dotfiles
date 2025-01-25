export PATH="${HOME}/bin:${PATH}"

export MANPATH="${HOME}/.homebrew/share/man:${MANPATH}"

# http://unix.stackexchange.com/questions/4859/visual-vs-editor-whats-the-difference
export EDITOR='code'
export VISUAL='code'

export GREP_COLOR='1;33'

# nvm is incompatible with PREFIX
unset PREFIX

# Suppress the message on shell startup about zsh being macOS default
export BASH_SILENCE_DEPRECATION_WARNING=1

# https://standards.freedesktop.org/basedir-spec/basedir-spec-latest.html
# https://wiki.archlinux.org/index.php/XDG_Base_Directory_support

################################################################################
# User directories:
################################################################################

# Where user-specific configurations should be written (analogous to /etc).
XDG_CONFIG_HOME="${HOME}/.config"

# Where user-specific non-essential (cached) data should be written (analogous to /var/cache).
XDG_CACHE_HOME="${HOME}/.cache"

# Where user-specific data files should be written (analogous to /usr/share).
XDG_DATA_HOME="${HOME}/.local/share"

# Used for non-essential, user-specific data files such as sockets, named pipes, etc.
# XDG_RUNTIME_DIR=

################################################################################
# System directories:
################################################################################

# List of directories seperated by : (analogous to PATH).
XDG_DATA_DIRS=/usr/local/share:/usr/share

# List of directories seperated by : (analogous to PATH).
XDG_CONFIG_DIRS=/etc/xdg
