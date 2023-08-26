# This is the static configuration,
# to edit the qutebrowser managed settings goto:
# ~/.var/app/org.qutebrowser.qutebrowser/config/qutebrowser/autoconfig.yml
config.load_autoconfig()

# Command aliases to make it feel more like VIM
c.aliases = {
        'cq': 'close',
        'cquit': 'close',
        'q': 'tab-close',
        'qa': 'quit',
        'w': 'session-save',
        'wq': 'tab-close',
        'wqa': 'quit --save',
        'x': 'tab-close'
}

# Make VIM's <Ctrl-W> work by removing its default assignment from all modes
for mode_bindings in c.bindings.default:
	if '<Ctrl-W>' in c.bindings.default[mode_bindings]:
		del c.bindings.default[mode_bindings]['<Ctrl-W>']

# Command mode bindings to make it feel more like VIM
config.bind('<Ctrl-n>', 'completion-item-focus --history next', mode='command')
config.bind('<Ctrl-p>', 'completion-item-focus --history prev', mode='command')
# Command mode readline like bindings
config.bind('<Ctrl-h>', 'fake-key --global <Backspace>', 'command')
config.bind('<Ctrl-a>', 'fake-key --global <Home>', 'command')
config.bind('<Ctrl-e>', 'fake-key --global <End>', 'command')
config.bind('<Ctrl-b>', 'fake-key --global <Left>', 'command')
config.bind('<Mod1-b>', 'fake-key --global <Ctrl-Left>', 'command')
config.bind('<Ctrl-f>', 'fake-key --global <Right>', 'command')
config.bind('<Mod1-f>', 'fake-key --global <Ctrl-Right>', 'command')
config.bind('<Ctrl-p>', 'fake-key --global <Up>', 'command')
config.bind('<Ctrl-n>', 'fake-key --global <Down>', 'command')
config.bind('<Mod1-d>', 'fake-key --global <Ctrl-Delete>', 'command')
config.bind('<Ctrl-d>', 'fake-key --global <Delete>', 'command')
config.bind('<Ctrl-w>', 'fake-key --global <Ctrl-Backspace>', 'command')
config.bind('<Ctrl-u>', 'fake-key --global <Shift-Home><Delete>', 'command')
config.bind('<Ctrl-k>', 'fake-key --global <Shift-End><Delete>', 'command')
config.bind('<Ctrl-x><Ctrl-e>', 'edit-command', 'command')

# Normal mode bindings to make it feel more like VIM
config.bind('<Ctrl-x><Ctrl-e>', 'edit-url', mode='normal')
config.bind('<Ctrl-i>', 'forward', mode='normal')
config.bind('<Ctrl-n>', 'nop', mode='normal')
config.bind('<Ctrl-o>', 'back', mode='normal')
config.bind('gT', 'tab-prev', mode='normal')
config.bind('gt', 'tab-next', mode='normal')
config.bind('ZZ', 'quit --save', mode='normal')
config.bind('ZQ', 'quit', mode='normal')
config.bind('<Ctrl-w>o', 'tab-only --pinned keep', mode='normal')
config.bind('<Ctrl-w>T', 'tab-give', mode='normal')
config.bind('<Ctrl-w>w', 'tab-next', mode='normal')
config.bind('<Ctrl-w><Ctrl-w>', 'tab-next', mode='normal')
# Disable qutebrowsers strange keybinds
config.bind('M', 'nop', mode='normal')
config.bind('D', 'nop', mode='normal')
config.bind('d', 'nop', mode='normal')
config.bind('SS', 'config-edit', mode='normal')

# Insert mode bindings to simulate readline keybindings
config.bind('<Ctrl-h>', 'fake-key <Backspace>', 'insert')
config.bind('<Ctrl-a>', 'fake-key <Home>', 'insert')
config.bind('<Ctrl-e>', 'fake-key <End>', 'insert')
config.bind('<Ctrl-b>', 'fake-key <Left>', 'insert')
config.bind('<Mod1-b>', 'fake-key <Ctrl-Left>', 'insert')
config.bind('<Ctrl-f>', 'fake-key <Right>', 'insert')
config.bind('<Mod1-f>', 'fake-key <Ctrl-Right>', 'insert')
config.bind('<Ctrl-p>', 'fake-key <Up>', 'insert')
config.bind('<Ctrl-n>', 'fake-key <Down>', 'insert')
config.bind('<Mod1-d>', 'fake-key <Ctrl-Delete>', 'insert')
config.bind('<Ctrl-d>', 'fake-key <Delete>', 'insert')
config.bind('<Ctrl-w>', 'fake-key <Ctrl-Backspace>', 'insert')
config.bind('<Ctrl-u>', 'fake-key <Shift-Home><Delete>', 'insert')
config.bind('<Ctrl-k>', 'fake-key <Shift-End><Delete>', 'insert')
config.bind('<Ctrl-x><Ctrl-e>', 'open-editor', 'insert')

c.content.cookies.accept = 'no-3rdparty'
c.content.blocking.method = 'both'
c.content.default_encoding = 'utf-8'
c.content.javascript.enabled = False
c.content.javascript.can_access_clipboard = True

c.downloads.position = 'bottom'
c.tabs.position = 'top'
c.tabs.show = 'multiple'
c.scrolling.bar = 'when-searching'

# To allow editing via external vim following permissions must be granted to qutebrowser:
# flatpak override --user --talk-name=org.freedesktop.Flatpak org.qutebrowser.qutebrowser # for flatpak-spawn
# flatpak override --user --filesystem=/tmp org.qutebrowser.qutebrowser # for writing reading and writing tmp files
c.editor.command = [
        'flatpak-spawn',
        '--host', 
        'termfg',
        'vim "{file}" -c "normal {line}G{column0}l"'
]
