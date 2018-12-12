string_lower() {
  tr '[:upper:]' '[:lower:]'
}

string_upper() {
  tr '[:lower:]' '[:upper:]'
}

string_sub() {
  local replace
  local with
  replace="$(echo "$1" | sed 's|/|\\/|g')"
  with="$(echo "$2" | sed 's|/|\\/|g')"
  sed 's/'"$replace"'/'"$with"'/'"${flags-}"
}

string_gsub() {
  flags=g string_sub "$@"
}
