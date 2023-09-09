if status is-interactive
	# Commands to run in interactive sessions can go here
	fish_add_path --prepend --path "{$HOME}/bin" "{$HOME}/.local/bin"

	# Initialize zoxide if in $PATH
	if type --query zoxide
		zoxide init --cmd=j fish | source
	end

	# See here where to put third-party/vendor completins:
	# https://fishshell.com/docs/current/completions.html#where-to-put-completions
	# While testing user vendor path was not in $fish_complete_path and so not used
	# instead user/chezmoi completions should be installed into end-user completions
end
