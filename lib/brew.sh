check_installed_taps() {
	tap="$1"

	# if test "${installed#*$tap}" != "$tap"; then
	if brew list -1 | grep -q "^${tap}}\$"; then
		return 1    # found
	else
		return 0    # not found
	fi
}


handle_taps() {
	for tap in $@; do
		if $(check_installed_taps $tap); then
			echo "Upgrading $tap"
			brew upgrade --cleanup $tap 2>/dev/null
		else
			echo "Installing $tap"
			brew install $tap
		fi
	done
}
