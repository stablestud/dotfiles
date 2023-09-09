# Config files in ~/.config/fish/conf.d/ are read first before this file,
# so make sure they do not depend on variables/tasks defined here

# More info on fish config files read here:
# https://fishshell.com/docs/current/language.html#configuration-files

# See here where to put third-party/vendor completions:
# https://fishshell.com/docs/current/completions.html#where-to-put-completions
# While testing the user vendor path was not in $fish_complete_path and so is
# not read by fish instead user/chezmoi completions should be installed
# into end-user completions directory

if status is-interactive
	# Commands to run in interactive sessions can go here
end
