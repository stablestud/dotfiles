# Setup fish greeting message with fzf keybindings
# Keybindings must be loaded at fish_user_key_bindings
if type --query fzf_key_bindings && status is-interactive
	if not set --query fish_greeting
		set --local color (set_color green)
		set --local nocolor (set_color normal)
		set --global fish_greeting (printf '%s<Ctrl-T>%s select files; %s<Ctrl-R>%s search history; %s<Alt-C>%s cd; %s<Ctrl-G>%s abort' $color $nocolor $color $nocolor $color $nocolor $color $nocolor)
	end
end
