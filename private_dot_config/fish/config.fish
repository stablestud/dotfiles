if status is-interactive
	# Commands to run in interactive sessions can go here
	fish_add_path --prepend --path "{$HOME}/bin" "{$HOME}/.local/bin"

	# Initialize zoxide if in $PATH
	if type --query zoxide
		zoxide init --cmd=j fish | source
	end
end
