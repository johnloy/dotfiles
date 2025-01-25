function touch() {
  mkdir -p $(dirname "$1")
  command touch "$1"
}

function homepage() {
  googler -n 1 -l en -g us "${*}" js --json | jq -r '.[0].url'
}

function topresults() {
  local n q
  n="${1}"
  q="${@:2}"
  [ $# -eq 1 ] && {
    n=10
    q="${*}"
  }
  googler -n "${n}" -l en -g us "${q}" --json | jq -r '.[].url '
}

function snipprev() {
  PREV=$(echo $(history | tail -n2 | head -n1) | sed 's/[0-9]* //')
  sh -c "pet new $(printf %q "$PREV")"
}

function snipsel() {
  BUFFER=$(pet search --query "$READLINE_LINE")
  READLINE_LINE=$BUFFER
  READLINE_POINT=${#BUFFER}
}
