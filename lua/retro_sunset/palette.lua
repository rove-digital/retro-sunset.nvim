-- Retro Sunset palette.
-- Colours are the Retro 82 palette by OldJobobo (CC0), assigned to match the
-- Omarchy Retro 82 preview: red callables, teal keywords, cream text.

local M = {
	-- Backgrounds (darkest -> lightest)
	bg_deep = "#000F1F",
	bg_dark = "#011935",
	bg = "#00172E",
	bg_float = "#01204E",
	bg_highlight = "#0A3A45",
	bg_visual = "#134E5A",

	-- Foregrounds
	fg = "#F9E4BC", -- cream: identifiers, plain text
	fg_bright = "#FFF1DA",
	fg_soft = "#A7C9C6", -- sea-glass
	fg_dim = "#5F8F96",
	fg_gutter = "#2A6A73",
	comment = "#134E5A",

	-- Accents
	red = "#F85525", -- functions, errors
	red_bright = "#FF6B3D", -- numbers, constants
	coral = "#FF8A6B",
	orange = "#E97B3C", -- parameters, types, mode
	peach = "#FAA968", -- warnings, visual mode
	gold = "#E0B55E",
	amber = "#FFBE7A",

	teal = "#3F8F8A", -- keywords
	teal_deep = "#028391", -- strings
	teal_dark = "#176B73",
	teal_mid = "#2C7C88",
	cyan = "#19A7A8",
	cyan_bright = "#39B5D4", -- builtin types
	aqua = "#63C6BE",
	seafoam = "#8CBFB8",
	mint = "#9FD9B3",
	ice = "#A8D6CF", -- builtin functions, operator keywords
	sky = "#6FA6C8",

	none = "NONE",
}

M.terminal = {
	M.bg,
	M.red,
	M.cyan,
	M.peach,
	M.sky,
	M.orange,
	M.teal,
	M.fg_soft,
	M.fg_gutter,
	M.red_bright,
	M.aqua,
	M.amber,
	M.cyan_bright,
	M.coral,
	M.ice,
	M.fg_bright,
}

return M
