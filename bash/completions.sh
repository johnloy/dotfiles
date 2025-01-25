# Old bash-completion homebrew formula automatically sourced all completions under /usr/local/etc/bash_completions.d/
#
# New bash-completion@2 homebrew forumula installs a symlink:
# /usr/local/Cellar/bash-completion@2/2.11/etc/profile.d/bash_completion.sh -> /usr/local/etc/profile.d/bash_completion.sh
#
# This bash_completion.sh script ultimately sources all files under
# /usr/local/share/bash-completion/completions/
# ...which links to
# /usr/local/Cellar/bash-completion@2/2.11/share/bash-completion/completions/
#
# File in bash_completion.d/ are no longer automatically sourced, so you need to explicitly source them.
if type brew &>/dev/null; then
  HOMEBREW_PREFIX="$(brew --prefix)"
  [[ -r "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh" ]] && . "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh"
  for COMPLETION in "${HOMEBREW_PREFIX}/etc/bash_completion.d/"*; do
    [[ -r "$COMPLETION" ]] && . "$COMPLETION"
  done
fi

docker_etc=/Applications/Docker.app/Contents/Resources/etc
docker_completions="${docker_etc}"/docker.bash-completion
docker_compose_completions="${docker_etc}"/docker-compose.bash_completion
[ -f $docker_completions ] && . $docker_completions
[ -f $docker_compose_completions ] && . $docker_compose_completions
unset docker_completions
unset docker_compose_completions
