##################################################
#██████╗  █████╗ ███████╗██╗  ██╗██████╗  ██████╗#
#██╔══██╗██╔══██╗██╔════╝██║  ██║██╔══██╗██╔════╝#
#██████╔╝███████║███████╗███████║██████╔╝██║     #
#██╔══██╗██╔══██║╚════██║██╔══██║██╔══██╗██║     #
#██████╔╝██║  ██║███████║██║  ██║██║  ██║╚██████╗#
#╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝#
##################################################

# Source global bashrc file
if [ -f /etc/bashrc ]; then
	. /etc/bashrc # (`.` == `source`)
fi

# Add user specific PATH variables
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH # make modified PATH env var available to all child processes that the current shell creates

# Add user specific aliases and functions
if [ -d ~/.bashrc.d ]; then		# checks if ~/.bashrc.d exists
	for rc in ~/.bashrc.d/*; do	# iterate through all files and directories
		if [ -f "$rc" ]; then	# check if current item (`$rc`) is a regular file
			. "$rc"				# source file i.e. execute content of file
		fi
	done
fi

unset rc # unset/free the `rc` variable
