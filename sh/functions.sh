function source_many() {
  for script in "$@"; do
    [ -e "$script" ] && source "$script"
  done
}
