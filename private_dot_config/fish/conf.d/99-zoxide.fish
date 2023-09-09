if status is-interactive
	# Initialize zoxide if in $PATH
	if type --query zoxide
		zoxide init --cmd=j fish | source
	end
end
