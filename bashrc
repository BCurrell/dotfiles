# If not running interactively, do nothing
case $- in
	*i*) ;;
	*) return;;
esac

# TODO: Just read this directory from dotfiles?
BASHRC_D="${HOME}/.bashrc.d"

# This file is only used to source any individual config files in ${BASHRC_D}
# Create any config files in ${BASHRC_D} with a .conf suffix

if [ -d "${BASHRC_D}" ]
then
	for F in "${BASHRC_D}"/*.conf
	do
		if [ -r "${F}" ]
		then
			# shellcheck source=/dev/null
			. "${F}"
		fi
	done

	unset F
fi
