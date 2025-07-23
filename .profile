# If not running interactively, do nothing
if [ -z "${PS1}" ]
then
	return
fi

# TODO: Just read this directory from dotfiles?
PROFILE_D="${HOME}/.profile.d"

# This file is only used to source any individual config files in ${PROFILE_D}
# Create any config files in ${PROFILE_D} with a .conf suffix

if [ -d "${PROFILE_D}" ]
then
	for F in "${PROFILE_D}"/*.conf
	do
		if [ -r "${F}" ]
		then
			# shellcheck source=/dev/null
			. "${F}"
		fi
	done

	unset F
fi
