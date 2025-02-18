# Use mise shims
export PATH="${HOME}/.local/share/mise/shims:${PATH}"

# Ensure user bins take precedence
export PATH="${HOME}/bin:${PATH}"

case "$(uname)" in
  Darwin)
    OS="mac"
    ;;
  Linux)
    OS="linux"
    ;;
  CYGWIN*|MINGW32*|MSYS*|MINGW*)
    OS="win"
    ;;
  *)
    OS="unknown"
    ;;
esac

export OS


# export MANPATH="${HOME}/.homebrew/share/man:${MANPATH}"

# http://unix.stackexchange.com/questions/4859/visual-vs-editor-whats-the-difference
export EDITOR='code'
export VISUAL='code'

export GREP_COLOR='1;33'

# nvm is incompatible with PREFIX
unset PREFIX

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

if [ -d "${HOME}/secrets.d" ]; then
  for file in ${HOME}/secrets.d/*; do
    [ -r "{$file}" ] && . "${file}"
  done
fi

export STARSHIP_CONFIG="${HOME}/.config/starship/config.toml"
