if [[ ! -d "${XDG_DATA_HOME:-$HOME/.local/share}"/tag ]]; then
  mkdir "${XDG_DATA_HOME:-$HOME/.local/share}"/tag
fi

local search_prog
zstyle -s ':seagoj:tag:' search-prog search_prog

if (( $+commands[tag] )); then
  tag() { command tag "$@"; source ${TAG_ALIAS_FILE:$HOME/tmp/tag_aliases} 2>/dev/null }
  alias $search_prog=tag
fi

