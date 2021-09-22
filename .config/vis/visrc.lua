-- load standard vis module, providing parts of the Lua API
require('vis')


vis.events.subscribe(vis.events.INIT, function()
	-- Your global configuration options
	vis:command('set theme meimu')
	vis:command('set autoindent')
	vis:command('set tabwidth 4')
	vis:command('set expandtab')
	vis:command('set ignorecase')
end)

vis.events.subscribe(vis.events.WIN_OPEN, function(win)
	-- Your per window configuration options e.g.
	-- vis:command('set number')
	vis:command('set show-tabs')
	vis:command('set show-spaces')
	vis:command('set show-newlines')
end)

