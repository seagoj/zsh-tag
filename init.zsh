if [[ ! -d "${XDG_DATA_HOME:-$HOME/.local/share}"/tag ]]; then
  mkdir "${XDG_DATA_HOME:-$HOME/.local/share}"/tag
fi

if (( $+commands[tag] )); then
  tag() { command tag "$@"; source ''${TAG_ALIAS_FILE:-/tmp/tag_aliases} 2>/dev/null }
  alias rg=tag
fi

