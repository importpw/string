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

# https://linuxize.com/post/how-to-check-if-string-contains-substring-in-bash/
string_includes() {
	local r=1
	case "$1" in
		*"$2"*)
			r=0
			;;
	esac
	return "$r"
}

string_starts_with() {
	local r=1
	case "$1" in
		"$2"*)
			r=0
			;;
	esac
	return "$r"
}

string_ends_with() {
	local r=1
	case "$1" in
		*"$2")
			r=0
			;;
	esac
	return "$r"
}

string_strikethrough() {
	sed "s/\(.\)/\1"$'\xcc\xb6'"/g"
}
